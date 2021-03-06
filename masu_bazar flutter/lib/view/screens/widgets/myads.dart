import 'package:flutter/material.dart';
import 'package:masu_bazar/Model/khasi.dart';
import 'package:masu_bazar/controller/Provider/cprovider.dart';

import 'package:masu_bazar/view/screens/show_dialog/dialog.dart';
import 'package:provider/provider.dart';

class MyAds extends StatelessWidget {
  var token;
  final String title;
  MyAds({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<UserDetailsProvider>(
        create: (context) => UserDetailsProvider(),
        child: Consumer<UserDetailsProvider>(builder: (context, value, child) {
          return FutureBuilder(
              future: value.getSingleKhasi(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.connectionState == ConnectionState.done) {
                  var response = snapshot.data as List<KhasiModel>;

                  return ListView.builder(
                    itemCount: response.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Dismissible(
                          direction: DismissDirection.startToEnd,
                          confirmDismiss: (direction) async {
                            final result = await showDialog(
                              context: context,
                              builder: (_) => Delete(),
                            );
                            if (result) {
                              await value.deletePost(response[index].id);
                            }
                            return result;
                          },
                          key: ValueKey(response[index].id),
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
                                margin:
                                    EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12,
                                          offset: Offset(1.0, 2.0))
                                    ],
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(110, 0, 20, 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        response[index].title + " :",
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
                                        response[index].shortDescription,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13.0),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Weight: " +
                                                response[index]
                                                    .estimatedWeight
                                                    .toString(),
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
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            response[index].address,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        response[index].ownerName,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 1.0,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Text(
                                            response[index]
                                                .date
                                                .toString()
                                                .split(" ")
                                                .last,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12),
                                          )),
                                          Expanded(
                                              child: Text(
                                            "Rs." +
                                                response[index]
                                                    .price
                                                    .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12),
                                          )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 15.0,
                                  top: 20.0,
                                  bottom: 10.0,
                                  child: Container(
                                    child: Image(
                                      image: NetworkImage(AppUrl.imageUrl +
                                          response[index].khasiImage),
                                      width: 100,
                                      height: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              });
        }),
      ),
    );
  }
}
