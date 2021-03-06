import 'package:flutter/material.dart';

class DealList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.orange,
        elevation: 0.0,
        title: Text(
          "Deal of the day",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.orange,
                child: Image(
                  image: AssetImage('assets/images/logo1.png'),
                )),
          ),
        ],
      ),
    );
  }
}
