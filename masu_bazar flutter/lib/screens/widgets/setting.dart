import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/widgets/colors.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orange,
        title: Text('Setting',style:TextStyle(color: white)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "ACCOUNT",
              style: TextStyle(color:orange),
            ),
            const SizedBox(height: 10.0),
            Card(
              elevation: 0.5,
              margin: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 0,
              ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/person1.png'),
                    ),
                    title: Text("Anil Pokhrel"),
                    onTap: () {},
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.orange,
                    value: false,
                    title: Text("Dark Mode"),
                    onChanged: (val) {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              "MORE SETTINGS",
              style: TextStyle(color:orange),
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 0,
              ),
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                    activeColor: Colors.orange,
                    value: true,
                    title: Text("Received notification"),
                    onChanged: (val) {},
                  ),
                
                  _buildDivider(),
                  ListTile(
                   leading: Text('Change Language',style: TextStyle(fontSize:16),),
                   trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                    _buildDivider(),
                ListTile(
                    leading: Text('Feedback',style: TextStyle(fontSize:16),),
                   trailing: Icon(Icons.feedback),
                ),
                  _buildDivider(),
                  ListTile(
                 
                   
                    title: Text("Terms and Conditions"),
                    
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 0,
              ),
              child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Logout"),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 60.0),
          ],
        ),
      ),
      
    );
  }
   Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade300,
    );
  }
}
