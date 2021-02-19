const mongoose=require('mongoose');
const khasiSchema=mongoose.Schema({
    _id:mongoose.Schema.Types.ObjectId,
    userId:{
        type:String,
    },
    title:{
        type:String,
        required:true,
        
    },
    category:{
        type:String,
        required:true,
    },
    short_description:{
        type:String,
        required:true,
    },
    estimated_weight:{
        type:Number,
        required:true,
    },
    price:{
        type:Number,
        required:true,
    },
    color:{
        type:String,
        required:true,
    },
    daat:{
        type:Number,
        required:true,
    },

    owner_name:{
        type:String,
        required:true,
    },
    address:{
        type:String,
        required:true,
    },
   primary_contact_no:{
        type:Number,
        required:true,
    },
    secondary_contact_no:{
        type:Number,
    },
    age:{
        type:Number,
        required:true,
    },
    khasiImage:{
        type:String,
       required:true,
    },
    date:{
        type:Date,
        default:Date.now
    }
});
module.exports=mongoose.model('KhasiLists',khasiSchema);