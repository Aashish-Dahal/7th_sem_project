import 'package:flutter/material.dart';
import 'package:masu_bazar/route_generator.dart';
import 'package:shared_preferences/shared_preferences.dart';

int initScreen;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:
          initScreen == 0 || initScreen == null ? '/IntroScreen' : '/LoginPage',
      onGenerateRoute: RouteGenerator.generateRoute,
      title: 'E-commerce Mobile Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange[400],
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
    );
  }
}
