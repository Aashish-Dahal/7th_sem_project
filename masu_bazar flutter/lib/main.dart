import 'package:flutter/material.dart';
import 'package:masu_bazar/route_generator.dart';
import 'package:shared_preferences/shared_preferences.dart';

int initScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = await preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:
          initScreen == 0 || initScreen == null ? '/IntroScreen' : '/HomePage',
      onGenerateRoute: RouteGenerator.generateRoute,
      title: 'E-commerce Mobile Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
    );
  }
}
