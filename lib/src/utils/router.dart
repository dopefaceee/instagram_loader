import 'dart:js';

import 'package:flutter/material.dart';
import 'package:instagram_loader/src/pages/home_page.dart';
import 'package:instagram_loader/src/pages/information_page.dart';
import 'package:instagram_loader/src/pages/worth_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomePage());
      case '/information':
        return MaterialPageRoute(builder: (context) => InformationPage());
      case '/worth':
        return MaterialPageRoute(builder: (context) => WorthPage());
      default:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
