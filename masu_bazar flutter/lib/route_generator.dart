import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/profile.dart';
import 'package:masu_bazar/screens/widgets/home_page.dart';

import 'screens/introduction_page/intro_screen.dart';
import 'screens/login/login_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/IntroScreen':
        return MaterialPageRoute(builder: (_) => IntroScreen());
      case '/HomePage':
        return MaterialPageRoute(builder: (_) => HomePage());
        case '/LoginPage':
        return MaterialPageRoute(builder: (_) => LoginPage());
          case '/Profile':
        return MaterialPageRoute(builder: (_) => Profile());
    }
  }
}
