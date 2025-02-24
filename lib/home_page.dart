import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
// También podrías usar las rutas definidas en routes.dart

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            ElevatedButton(
             child: const Text('Ir a Página 1'),
             onPressed: () {
               Navigator.push(
                 context,
                 PageRouteBuilder(
                   pageBuilder: (context, animation, secondaryAnimation) => const Page1(),
                   transitionDuration: Duration.zero,
                   reverseTransitionDuration: Duration.zero,
                 ),
               );
             },
           ),
            const SizedBox(height: 20),
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
          ],
        ),
      ),
    );
  }
}
