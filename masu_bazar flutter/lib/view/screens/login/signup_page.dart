import 'package:flutter/material.dart';
import 'package:masu_bazar/Model/user.dart';
import 'package:masu_bazar/controller/Provider/cprovider.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  bool _passwordVisible;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var username, email, confirmPassword, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.orange[400],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                )),
          ),
          ListView(
            children: [
              headerSection(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(color: Colors.white),
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 20.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              onChanged: (value) {
                                username = value;
                              },
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Username is required';
                                }
                              },
                              cursorColor: Colors.grey,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.person_outline,
                                  color: Colors.blue[700],
                                  size: 20,
                                ),
                                hintText: "Username",
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black54)),
                                hintStyle: TextStyle(
                                    color: Colors.black54, fontSize: 14.5),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextFormField(
                              onChanged: (value) {
                                email = value;
                              },
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Email is required';
                                }
                              },
                              cursorColor: Colors.grey,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.email_outlined,
                                  color: Colors.blue[700],
                                  size: 20,
                                ),
                                hintText: "Email",
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black54)),
                                hintStyle: TextStyle(
                                    color: Colors.black54, fontSize: 14.5),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextFormField(
                              onChanged: (value) {
                                password = value;
                              },
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Password is required';
                                }
                              },
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.black),
                              obscureText: !_passwordVisible,
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock_outline,
                                  color: Colors.blue[700],
                                  size: 20,
                                ),
                                hintText: "Password",
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Theme.of(context).primaryColorDark,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                ),
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black54)),
                                hintStyle: TextStyle(
                                    color: Colors.black54, fontSize: 14.5),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextFormField(
                              onChanged: (value) {
                                confirmPassword = value;
                              },
                              validator: (String val) {
                                if (val != password)
                                  return "password doesn't match";
                                return null;
                              },
                              cursorColor: Colors.grey,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock_outline,
                                  color: Colors.blue[700],
                                  size: 20,
                                ),
                                hintText: "Confirm Password",
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black54)),
                                hintStyle: TextStyle(
                                    color: Colors.black54, fontSize: 14.5),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50.0,
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child:
                                  ChangeNotifierProvider<UserDetailsProvider>(
                                create: (context) => UserDetailsProvider(),
                                child: Consumer<UserDetailsProvider>(
                                  builder: (context, value, child) =>
                                      MaterialButton(
                                    disabledColor: Colors.blue,
                                    color: Colors.orange[400],
                                    onPressed: () {
                                      if (_formKey.currentState.validate()) {
                                        var registerModel = UserModel(
                                            name: username,
                                            email: email,
                                            password: password,
                                            confirmPassword: confirmPassword);
                                        try {
                                          value
                                              .register(registerModel)
                                              .then((response) {
                                            if (response.statusCode == 201) {
                                              var snackbar = SnackBar(
                                                  content: Text(
                                                      'Register Sucessfull!'));
                                              Scaffold.of(context)
                                                  .showSnackBar(snackbar);
                                            } else if (response.statusCode ==
                                                500) {
                                              var snackbar = SnackBar(
                                                  content: Text(
                                                      'please check username and email'));
                                              Scaffold.of(context)
                                                  .showSnackBar(snackbar);
                                            } else {
                                              var snackbar = SnackBar(
                                                  content: Text(
                                                      'Register Unucessfull!'));
                                              Scaffold.of(context)
                                                  .showSnackBar(snackbar);
                                            }
                                          });
                                        } catch (e) {}
                                      }
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(
                                          color: Colors.white,
                                          letterSpacing: 1),
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              child: Text("I have account? Back to login"),
                              onTap: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('/LoginPage');
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              )
            ],
          )
        ],
      ),
    );
  }

  Container headerSection() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Column(
        children: [
          Image.asset(
            'assets/images/meatmart1.png',
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}
