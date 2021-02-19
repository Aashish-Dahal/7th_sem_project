import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:masu_bazar/screens/login/signup_page.dart';
=======
import 'package:masu_bazar/screens/profile.dart';
import 'package:masu_bazar/screens/widgets/home_page.dart';

import 'screens/introduction_page/intro_screen.dart';
import 'screens/login/login_page.dart';
>>>>>>> 67793adb40551d2d52ce78e8bacdf0d37e6ec9fb
import 'package:masu_bazar/screens/widgets/home_page.dart';
import 'screens/introduction_page/intro_screen.dart';
import 'screens/login/login_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/IntroScreen':
        return MaterialPageRoute(builder: (_) => IntroScreen());
      case '/LoginPage':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/SignupPage':
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case '/HomePage':
        return MaterialPageRoute(builder: (_) => HomePage());
        case '/LoginPage':
        return MaterialPageRoute(builder: (_) => LoginPage());
          case '/Profile':
        return MaterialPageRoute(builder: (_) => Profile());
    }
  }
}
