import 'package:flutter/material.dart';
import 'package:quiz_app/views/quiz.dart';
import 'package:quiz_app/views/start_screen.dart';

void main() {
  runApp(const Quiz());
}

/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 75, 48, 172), Color.fromARGB(255, 49, 120, 116)]
            )
        ),child: const StartScreen(),
        ),
      ),
    );
  }
}*/
