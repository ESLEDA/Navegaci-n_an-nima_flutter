import 'package:flutter/material.dart';
import 'home_page.dart';
import 'page1.dart';
import 'page2.dart';

class Routes {
  static Route inicio() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
    );
  }

  static Route page1() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Page1(),
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
    );
  }

  static Route page2() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
    );
  }
}
