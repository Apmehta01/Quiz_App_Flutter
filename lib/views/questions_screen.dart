import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/utils/answer_buttons.dart';

import '../model/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key,required this.onSelectedAnswer}) : super(key: key);

  final void Function (String answer) onSelectedAnswer;
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestions(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                currentQuestion.text,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                )),
                /*style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            )*/
                const SizedBox(
                  height: 30,
                ),
                ...currentQuestion.getSuffleAnswer().map((answer) {
              return AnswerButton(answerText: answer, onTap: (){
                answerQuestions(answer);
              });
            })
            // AnswerButton(answerText: currentQuestion.answers[0],onTap: (){}),
          ],
        ),
      ),
    );
  }
}
