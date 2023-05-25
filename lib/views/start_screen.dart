import 'package:flutter/material.dart';

import '../utils/helperButtonStyles.dart';
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.topRight;

class StartScreen extends StatelessWidget {
  final imageSplash = 'assets/images/quiz_logo.png';
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
        crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
        children: [
          Image.asset(
            imageSplash,
            width: 200,
            height: 200,
            color: const Color.fromARGB(200, 255, 255,255),
          ),
          const SizedBox(height: 50,),
          const Text('Goto Flutter Quiz!', style: TextStyle(fontWeight: FontWeight.w700 ,fontSize: 20.0,color: Colors.white)),
          const SizedBox(height: 30,),
          ElevatedButton.icon(
            onPressed: () {
              startQuiz();
            },
            icon: Icon(Icons.arrow_right_alt), // Replace with your desired icon
            label: ShaderMask(
              shaderCallback: (bounds) {
// Define the gradient colors
                return LinearGradient(
                  colors: [Color.fromARGB(255, 49, 120, 116),Color.fromARGB(255, 75, 48, 172)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(bounds);
              },child: Text('Start Quiz',style: TextStyle(fontWeight: FontWeight.w700 )),),
              style:HelperButtonStyles.ElevatedButtonStyle(Colors.white,Colors.deepPurpleAccent,16,15.0,8)
          ),
        ],
      ),
    );
  }
}