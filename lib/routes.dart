import 'package:flutter/material.dart';
import 'home_page.dart';
import 'page1.dart';
import 'page2.dart';

class Routes {
  static MaterialPageRoute inicio() {
    return MaterialPageRoute(builder: (context) => const HomePage());
  }

  static MaterialPageRoute page1() {
    return MaterialPageRoute(builder: (context) => const Page1());
  }

  static MaterialPageRoute page2() {
    return MaterialPageRoute(builder: (context) => const Page2());
  }
}
