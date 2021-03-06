import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masu_bazar/Model/user.dart';
import 'package:masu_bazar/controller/Provider/cprovider.dart';

import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var email, password;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  bool _passwordVisible;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              "Login",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              onChanged: (value) {
                                email = value;
                              },
                              cursorColor: Colors.grey,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Email Address is Required';
                                } else {
                                  return null;
                                }
                              },
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.email,
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
                              cursorColor: Colors.grey,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Password is Required';
                                } else {
                                  return null;
                                }
                              },
                              style: TextStyle(color: Colors.black),
                              obscureText: !_passwordVisible,
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock,
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
                                    color: Colors.blue[700],
                                    onPressed: () {
                                      if (_formKey.currentState.validate()) {
                                        var loginModel = UserModel(
                                          email: email,
                                          password: password,
                                        );
                                        try {
                                          value
                                              .login(loginModel)
                                              .then((response) {
                                            print(response.body);
                                            if (response.statusCode == 200) {
                                              var res = userModelFromJson(
                                                  response.body);
                                              value.saveUser(res);
                                              var snackbar = SnackBar(
                                                  content: Text(
                                                      'Login Sucessfull!'));
                                              Scaffold.of(context)
                                                  .showSnackBar(snackbar);
                                              Navigator.of(context)
                                                  .pushReplacementNamed(
                                                      '/HomePage');
                                            } else if (response.statusCode ==
                                                404) {
                                              var snackbar = SnackBar(
                                                  content: Text(
                                                      'Please enter valid email and password'));
                                              Scaffold.of(context)
                                                  .showSnackBar(snackbar);
                                            } else {
                                              var snackbar = SnackBar(
                                                  content: Text(
                                                      'login Unsucessful!'));
                                              Scaffold.of(context)
                                                  .showSnackBar(snackbar);
                                            }
                                          });
                                        } catch (e) {
                                          print(e.toString());
                                        }
                                      }
                                    },
                                    elevation: 0.0,
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          color: Colors.white,
                                          letterSpacing: 1.5),
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Forgot password?'),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '-OR-',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _socialIconButton(),
                            SizedBox(
                              height: 10,
                            ),
                            _noAccount(),
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

  // signIn(String email, pass) async {
  //   print(email);
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   Map data = {
  //     'email': email,
  //     'password': pass,
  //   };
  //   var jsonResponse = null;
  //   var response =
  //       await http.post("http://192.168.0.15:3000/user/login", body: data);
  //   jsonResponse = json.decode(response.body);
  //   print('Response status: ${response.statusCode}');
  //   print('Response body:${response.body}');
  //   if (jsonResponse != null) {
  //     setState(() {
  //       _isloding = false;
  //     });
  //     sharedPreferences.setString("token", jsonResponse['token']);
  //     sharedPreferences.setString("userID", jsonResponse['id']);
  //     sharedPreferences.setString("username", jsonResponse['username']);
  //     sharedPreferences.setString("email", jsonResponse['email']);
  //     Navigator.of(context).pushReplacementNamed('/HomePage');
  //   } else {
  //     setState(() {
  //       _isloding = true;
  //     });
  //     print(response.body);
  //   }
  // }

  Container headerSection() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Column(
        children: [
          Image.asset(
            'assets/images/meatmart1.png',
            width: 190,
            height: 190,
          ),
        ],
      ),
    );
  }

  Widget _socialIconButton() {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black12,
            radius: 25,
            child: Icon(
              FontAwesomeIcons.facebookF,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            backgroundColor: Colors.black12,
            child: Icon(
              FontAwesomeIcons.google,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  Widget _noAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
        ),
        SizedBox(
          width: 5,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/SignupPage');
          },
          child: Text(
            "Register",
            style: TextStyle(color: Colors.blue, fontSize: 15),
          ),
        )
      ],
    );
  }
}
