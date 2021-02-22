import 'package:flutter/material.dart';
//import 'package:masu_bazar/screens/details/details.dart';
import 'package:masu_bazar/screens/henTab_list/khukhuraModel.dart';
import 'package:masu_bazar/screens/nav_screen/nav_screen.dart';
import 'package:masu_bazar/screens/show_dialog/dialog.dart';

class MyAds extends StatelessWidget {
  final String title;
  MyAds({Key key, this.title}) : super(key: key);
  final HenModel henModel = HenModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: henModel.khasiList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => AddNavBarItemButton(
                  id: "1",
                  title: henModel.khasiList[index]["title_text"],
                  shortDescription: henModel.khasiList[index]["description"],
                  khasiImage: henModel.khasiList[index]["image"],
                  estimatedWeight:
                      int.parse(henModel.khasiList[index]["weight"]),
                  ownerName: henModel.khasiList[index]["name"],
                  color: henModel.khasiList[index]["color"],
                  primaryContactNo:
                      int.parse(henModel.khasiList[index]["number"]),
                  secondaryContactNo:
                      int.parse(henModel.khasiList[index]["snumber"]),
                  daat: 2,
                  address: henModel.khasiList[index]["location"],
                  price: int.parse(henModel.khasiList[index]["price"]),
                  age: 2,
                  category: "Hen",
                ),
              ));
            },
            child: Dismissible(
              direction: DismissDirection.startToEnd,
              confirmDismiss: (direction) async {
                final result = await showDialog(
                  context: context,
                  builder: (_) => Delete(),
                );

                return result;
              },
              key: ValueKey(1),
              background: Container(
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.red),
                padding: EdgeInsets.only(left: 16),
                child: Align(
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12, offset: Offset(1.0, 2.0))
                        ],
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(110, 0, 20, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            henModel.khasiList[index]["title_text"] + " :",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                          Divider(
                            thickness: 2.0,
                            color: Colors.black26,
                          ),
                          Text(
                            henModel.khasiList[index]["description"],
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 13.0),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Weight: " +
                                    henModel.khasiList[index]["weight"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Icon(
                                Icons.location_on,
                                size: 14.0,
                                color: Theme.of(context).primaryColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                henModel.khasiList[index]["location"],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ],
                          ),
                          Text(
                            henModel.khasiList[index]["name"],
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                          SizedBox(
                            height: 1.0,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Text(
                                henModel.khasiList[index]["date"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 12),
                              )),
                              Expanded(
                                  child: Text(
                                "Rs." + henModel.khasiList[index]["price"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 12),
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15.0,
                    top: 8.0,
                    bottom: 8.0,
                    child: Image(
                      width: 100,
                      image: AssetImage(
                        henModel.khasiList[index]["image"],
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
