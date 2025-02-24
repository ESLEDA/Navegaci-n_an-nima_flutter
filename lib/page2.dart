import 'package:flutter/material.dart';
import 'home_page.dart';
import 'page1.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 2'),
        centerTitle: true,
        backgroundColor: Colors.blue,
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
