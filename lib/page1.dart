import 'package:flutter/material.dart';
import 'home_page.dart';
import 'page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 1'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
             child: const Text('Ir a Página 2'),
             onPressed: () {
               Navigator.push(
                 context,
                 PageRouteBuilder(
                   pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
                   transitionDuration: Duration.zero,
                   reverseTransitionDuration: Duration.zero,
                 ),
               );
             },
           ),

            const SizedBox(height: 20),
           ElevatedButton(
             child: const Text('Ir a Inicio'),
             onPressed: () {
               Navigator.push(
                 context,
                 PageRouteBuilder(
                   pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
                   transitionDuration: Duration.zero,
                   reverseTransitionDuration: Duration.zero,
                 ),
               );
             },
           ),
          ],
        ),
      ),
    );
  }
}
