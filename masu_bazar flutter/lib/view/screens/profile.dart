import 'package:flutter/material.dart';
import 'package:masu_bazar/controller/Provider/cprovider.dart';
import 'package:masu_bazar/view/screens/widgets/colors.dart';
import 'package:masu_bazar/view/screens/widgets/home_page.dart';
import 'package:masu_bazar/view/screens/widgets/myads.dart';
import 'package:provider/provider.dart';

class ProfileNavBarItem extends StatefulWidget {
  ProfileNavBarItem({Key key}) : super(key: key);

  @override
  _ProfileNavBarItemState createState() => _ProfileNavBarItemState();
}

class _ProfileNavBarItemState extends State<ProfileNavBarItem> {
  var userId, username, email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Text(
            'Profile',
            style: TextStyle(color: white),
          ),
          actions: [
            Icon(
              Icons.settings,
              color: white,
            ),
            SizedBox(width: 13)
          ]),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.orange[400],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70),
                    )),
              ),
              Positioned(top: 10, left: 3, right: 1, child: headerSection()),
              Positioned(
                top: 250,
                left: 3,
                right: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: ChangeNotifierProvider<UserDetailsProvider>(
                        create: (context) => UserDetailsProvider(),
                        child: Consumer<UserDetailsProvider>(
                            builder: (context, value, child) {
                          value.getUser().then((value) {
                            username = value.name;
                            email = value.email;
                          });

                          return Container(
                            // margin: EdgeInsets.only(top: 200),
                            height: 150,
                            width: MediaQuery.of(context).size.width * 0.87,
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    username == null
                                        ? Text(
                                            "   ",
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold),
                                          )
                                        : Text(
                                            username,
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                    email == null
                                        ? Text(
                                            "                ",
                                            style: TextStyle(
                                              fontSize: 13.0,
                                            ),
                                          )
                                        : Text(
                                            email,
                                            style: TextStyle(
                                              fontSize: 13.0,
                                            ),
                                          ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          '24',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('Orders')
                                      ],
                                    ),
                                    SizedBox(width: 40),
                                    Column(
                                      children: [
                                        Text(
                                          "3",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('Ads')
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  margin: EdgeInsets.only(top: 420),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myCard(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          name: 'My Order  ',
                          icon: Icons.arrow_forward_ios_outlined),
                      SizedBox(
                        height: 5,
                      ),
                      myCard(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyAds()),
                            );
                          },
                          name: 'My Ads  ',
                          icon: Icons.arrow_forward_ios_outlined),
                      SizedBox(
                        height: 5,
                      ),
                      myCard(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          name: 'Edit Profile',
                          icon: Icons.arrow_forward_ios_outlined),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }

  Widget textSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            // margin: EdgeInsets.only(top: 200),
            height: 150,
            width: MediaQuery.of(context).size.width * 0.87,
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text(
                      "Ashish Dahal",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "ashishdahal490@gmail.com",
                      style: TextStyle(
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          '24',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text('Orders')
                      ],
                    ),
                    SizedBox(width: 40),
                    Column(
                      children: [
                        Text(
                          '12',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text('Ads')
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container headerSection() {
    return Container(
      height: 350,
      width: 400,
      child: Column(
        children: [
          Image.asset(
            'assets/images/person1.png',
            width: 300,
            height: 250,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }

  Widget myCard({String name, IconData icon, VoidCallback onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Card(
          margin: EdgeInsets.only(left: 25, right: 25),
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 180),
                  Icon(icon),
                ],
              ))),
    );
  }
}
