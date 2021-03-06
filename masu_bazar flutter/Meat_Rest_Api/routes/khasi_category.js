const express=require('express');
const khasiModel=require('../models/khasi.model');
const mongoose=require('mongoose');
const router=express.Router();
var multer=require('multer');
const path=require('path');
var checkAuth=require('../middleware/auth')

const fileFilter=(req, file, cb)=>{
    if(file.mimetype==='image/jpeg' ||file.mimetype==='image/jpg' || file.mimetype==='image/png'){
        cb(null,false);
    }else{
        cb(null,true);
    }

}
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, 'uploads')
    },
    filename: function (req, file, cb) {
      cb(null, Date.now()+file.originalname)
    }
  });
  const upload=multer({storage:storage,limits:{
    fileSize:1024*1024*5
     },
   //  fileFilter:fileFilter,
});



/*-----Handling Get requests----------*/

router.get('/get',(req,res,next)=>{
    
    khasiModel.find()
    .select('userId _id title category short_description estimated_weight price  color daat owner_name address primary_contact_no secondary_contact_no age khasiImage date')
    .exec()
    .then(docs=>{ 
        // const response={
        //     count:docs.length,
        //     khasiList:docs
        // };
        res.status(200).json(docs);
    })
    .catch(err=>{
        //500:-Internal Server Error
        res.status(500).json({
            error:err,
        })
    });
});

/*--------------end-------------*/

/*-----Handling Post requests----------*/


    router.post('/post',upload.single('image'),checkAuth,(req,res,next)=>{
   // console.log(req.userData['userid']);
  
    const khasiLists=new khasiModel({
        
          _id:new mongoose.Types.ObjectId(),
          userId:req.userData['userid'],
          title:req.body.title,
          category:req.body.category,
          short_description:req.body.short_description,
          estimated_weight:req.body.estimated_weight,
          price:req.body.price,
          color:req.body.color,
          daat:req.body.daat,
          owner_name:req.body.owner_name,
          address:req.body.address,
          primary_contact_no:req.body.primary_contact_no,
          secondary_contact_no:req.body.secondary_contact_no,
          age:req.body.age,
          khasiImage:req.file.path
          
    }); 
   
    khasiLists.save()
    .then(result=>{
       console.log(result);
       res.status(201).json({
        msg:'Created product successfully',
        khasiList:{
            id:result._id,
            title:result.title,
            category:result.category,
            short_description:result.short_description,
            estimated_weight:result.estimated_weight,
            price:result.price,
            color:result.color,
            daat:result.daat,
            owner_name:result.owner_name,
            address:result.address,
            primary_contact_no:result.primary_contact_no,
            secondary_contact_no:result.secondary_contact_no,
            age:result.age,
            khasiImage:result.khasiImage,
            date:result.date,
            userId:result.userid,
            
            request:{
                type:"Get",
                url:"http://localhost:3000/khasiLists/"+result._id,
            }
        }
       
    });
    })
    .catch(err=>{
        console.log(err);
           //500:-Internal Server Error
           res.status(500).json({
            error:err,
        })
    });

});
/*--------------end-------------*/

/*-----Handling Get requests through id----------*/

router.get('/singleKhasi',checkAuth,(req,res,next)=>{
    
    const id=req.userData['userid'];
    console.log(id);
    khasiModel.find({userId:id})
    .select('title category short_description estimated_weight price color daat owner_name address primary_contact_no secondary_contact_no age khasiImage date') 
    .exec()
    .then(doc=>{
        if(doc)
        {   
        res.status(200).send(doc);
        }else{
            res.status(404).json({
                message:"No valid entry found for provided ID!!"
            })
        }
    })
    .catch(err=>{
        //500:-Internal Server Error
        res.status(500).json({
            error:err,
        })
    });

});
router.get('/khasi',(req,res,next)=>{
    
    khasiModel.find({category:'khasi'})
    .select('title category short_description estimated_weight price color daat owner_name address primary_contact_no secondary_contact_no age khasiImage date') 
    .exec()
    .then(doc=>{
        if(doc)
        {   
        res.status(200).send(doc);
        }else{
            res.status(404).json({
                message:"No valid entry found for provided ID!!"
            })
        }
    })
    .catch(err=>{
        //500:-Internal Server Error
        res.status(500).json({
            error:err,
        })
    });

});
router.get('/boka',(req,res,next)=>{
    
    khasiModel.find({category:'Boka'})
    .select('title category short_description estimated_weight price color daat owner_name address primary_contact_no secondary_contact_no age khasiImage date') 
    .exec()
    .then(doc=>{
        if(doc)
        {   
        res.status(200).send(doc);
        }else{
            res.status(404).json({
                message:"No valid entry found for provided ID!!"
            })
        }
    })
    .catch(err=>{
        //500:-Internal Server Error
        res.status(500).json({
            error:err,
        })
    });

});

router.get('/:khasiListId',(req,res,next)=>{
    const id=req.params.khasiListId;
    khasiModel.findById(id)
    .select('_id title category short_description estimated_weight price color daat owner_name address primary_contact_no secondary_contact_no age khasiImage') 
    .exec()
    .then(doc=>{
        if(doc)
        {
        res.status(200).send(doc);
        }else{
            res.status(404).json({
                message:"No valid entry found for provided ID!!"
            })
        }
    })
    .catch(err=>{
        //500:-Internal Server Error
        res.status(500).json({
            error:err,
        })
    });

});
/*--------------end-------------*/

/*-----Handling patch requests through id----------*/

router.put('/:khasiListId',upload.single('khasiImage'),(req,res,next)=>{
    const id=req.params.khasiListId;
    khasiModel.findById(id,function(err,data){
      data.title=req.body.title;
      data.category=req.body.category;
      data.short_description=req.body.short_description;
      data.estimated_weight=req.body.estimated_weight;
      data.price=req.body.price;
      data.color=req.body.color;
      data.daat=req.body.daat;
      data.owner_name=req.body.owner_name;
      data.address=req.body.address;
      data.primary_contact_no=req.body.primary_contact_no;
      data.secondary_contact_no=req.body.secondary_contact_no;
      data.age=req.body.age?data.age:data.age;
      data.khasiImage=req.body.khasiImage;
      data.save().then(doc=>{
          res.status(201).json({
              message:"update successfully",
              data:doc
          })
      }).catch(err=>{
          res.json(err);
      });
    });
  
    })
    
    
   

/*--------------end-------------*/

/*-----Handling delete requests through id----------*/

router.delete('/:khasiListId',(req,res,next)=>{
  const id=req.params.khasiListId;
    khasiModel.findByIdAndDelete({_id: id})
    .exec()
    .then(result=>{
        res.status(200).json({
            msg:'khasiList Deleted',
            request:{
                type:'Post',
                url:"http://localhost:3000/khasiLists/"
            }
        })
    })
    .catch(err=>{
        console.log(err);
        res.status(500).json({
            error:err,
        })
    })
   
})
/*--------------end-------------*/

module.exports=router;