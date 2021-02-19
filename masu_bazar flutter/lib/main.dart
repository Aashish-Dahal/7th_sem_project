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
<<<<<<< HEAD
          initScreen == 0 || initScreen == null ? '/IntroScreen' : '/LoginPage',
=======
          initScreen == 0 || initScreen == null ? '/IntroScreen' : '/Profile',
          initScreen == 0 || initScreen == null ? '/IntroScreen' : '/HomePage',
>>>>>>> 67793adb40551d2d52ce78e8bacdf0d37e6ec9fb
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
