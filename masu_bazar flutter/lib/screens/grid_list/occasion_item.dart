import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/login/login.dart';
import 'grid_list.dart';
import 'package:masu_bazar/screens/widgets/appbar.dart';

class VakalTabList extends StatelessWidget {
  List<Choice> choices=<Choice>[
  Choice(title: 'कालो बोका',image: Image(image: AssetImage('assets/images/kaloboka.png'),height: 30,width: 30,)),
  Choice(title: 'परेवा',image: Image(image: AssetImage('assets/images/pigeon.png'),height: 30,width: 30,)),
  Choice(title: 'अन्य',image:Image(image: AssetImage('assets/category_list/pboka.png'),height: 30,width: 30,)),

];
  final title;
  List <Widget> containers=[
  
   Center(
     child: Text('कालो बोका'),
   ),
     Center(
     child: Text('परेवा'),
   ),
   Center(
     child: Text('अन्य'),
   ),
  
  ];

   VakalTabList({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          
          appBar:AppBar(
        title: Text(title),
        actions: [
          Search(),
          Padding(
         padding: EdgeInsets.all(8.0),
         child: Logout(),
       ),
      ],),
        
         body: DefaultTabController(
           length: choices.length,
           child: Column(
             children: <Widget>[
               Container(
                  margin: EdgeInsets.only(left: 0.5,right: 0.5),
                 constraints: BoxConstraints.expand(height:63),
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(1.0),
                border:Border.all(color: Colors.black54,style: BorderStyle.solid),
                 boxShadow: [
                  BoxShadow(
                     color: Colors.black26,
                     offset: Offset(1.0,1.0)
                  ),
                 ]
                ),
                 child: TabBar(
                isScrollable: false,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                tabs:choices.map<Widget>((Choice choice){
                return Container(
                 margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Tab(
               text: choice.title,
               icon:choice.image,
                    ),
                );
              }
              ).toList(),
              
            ),
               ),
               Expanded(
                 child: TabBarView(children: containers)
               )
             ],
           ),
         ),
          );
       
  }
}

