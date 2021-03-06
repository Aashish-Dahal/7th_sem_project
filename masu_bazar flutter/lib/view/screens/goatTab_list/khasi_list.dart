import 'package:flutter/material.dart';
import 'package:masu_bazar/Model/khasi.dart';
import 'package:masu_bazar/controller/Provider/cprovider.dart';
import 'package:masu_bazar/view/screens/details/details.dart';
import 'package:masu_bazar/view/screens/widgets/colors.dart';
import 'package:provider/provider.dart';

class KhasiList extends StatefulWidget {
  final title;

  KhasiList({Key key, this.title}) : super(key: key);
  @override
  _KhasiListState createState() => _KhasiListState();
}

class _KhasiListState extends State<KhasiList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<UserDetailsProvider>(
        create: (context) => UserDetailsProvider(),
        child: Consumer<UserDetailsProvider>(
          builder: (context, value, child) => FutureBuilder(
            future: value.getKhasi(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                var response = snapshot.data as List<KhasiModel>;
                return ListView.builder(
                    itemCount: response.length,
                    itemBuilder: (context, index) {
                      var listItem = response[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => Details(
                                    title: listItem.title,
                                    image: listItem.khasiImage,
                                    description: listItem.shortDescription,
                                    weight: listItem.estimatedWeight,
                                    location: listItem.address,
                                    name: listItem.ownerName,
                                    price: listItem.price,
                                    daat: listItem.daat,
                                    color: listItem.color,
                                    date: listItem.date,
                                    age: listItem.age,
                                    pnumber: listItem.primaryContactNo,
                                    snumber: listItem.secondaryContactNo,
                                  )));
                        },
                        child: Stack(
                          children: <Widget>[
                            // box height,width,margin and decoration
                            Container(
                              margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0.0, 0.0))
                                  ],
                                  borderRadius: BorderRadius.circular(5.0)),
                              // padding inside the box
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(120, 0, 20, 20),
                                //All texts is here
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    //Title text
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      listItem.title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0),
                                    ),
                                    Divider(
                                      height: 2,
                                      color: orange,
                                    ),
                                    //description
                                    Text(
                                      listItem.shortDescription,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        //weight
                                        Text(
                                          "Weight : " +
                                              listItem.estimatedWeight
                                                  .toString() +
                                              " kg",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
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
                                        //location
                                        Text(
                                          listItem.address,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                    //name
                                    Text(
                                      listItem.ownerName,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: 1.0,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        //date
                                        Text(
                                          listItem.date
                                              .toString()
                                              .split(" ")[0],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        //price
                                        Text(
                                          "Rs." + listItem.price.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                        ),
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
                                    image: NetworkImage(
                                        AppUrl.imageUrl + listItem.khasiImage),
                                    width: 100,
                                    height: 20,
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          ],
                        ),
                      );
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
