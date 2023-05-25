import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 75, 48, 172), Color.fromARGB(255, 49, 120, 116)]
            )
        ),child: Container(),
        ),
      ),
    );
  }
}
