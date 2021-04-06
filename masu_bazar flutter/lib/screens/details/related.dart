import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RealatedProduct extends StatelessWidget {
  const RealatedProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Related Products',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 135),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          width: MediaQuery.of(context).size.width,
          height: 170,
          // child: GridView(
          //     physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       mainAxisSpacing: 8,
          //       crossAxisSpacing: 0,
          //       crossAxisCount: 7,
          //       childAspectRatio: 3 / 4,
          //     ),
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                                padding: EdgeInsets.only(left: 8, right: 8,top: 10),
                                child: Image.asset(
                                  'assets/images/hen1.png',
                                  height: 80,
                                  width: 50,
                                )),
                                SizedBox(height:10),
                            Text(
                              'heloo',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                              Text(
                              'Rs 5000',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                              Text(
                              'heloo',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ))),
                  Container(
                    child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                                padding: EdgeInsets.only(left: 8, right: 8,top: 10),
                                child: Image.asset(
                                  'assets/images/hen1.png',
                                  height: 80,
                                  width: 50,
                                )),
                                SizedBox(height:10),
                            Text(
                              'heloo',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                              Text(
                              'Rs 5000',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                              Text(
                              'heloo',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ))),
                          Container(
                    child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                                padding: EdgeInsets.only(left: 8, right: 8,top: 10),
                                child: Image.asset(
                                  'assets/images/hen1.png',
                                  height: 80,
                                  width: 50,
                                )),
                                SizedBox(height:10),
                            Text(
                              'heloo',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                              Text(
                              'Rs 5000',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                              Text(
                              'heloo',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                        )
                        ),
                        SizedBox(height:20) 
       
         
      ],
    ))
    ]);
  
  }
}
