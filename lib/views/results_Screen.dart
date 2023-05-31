import 'package:flutter/material.dart';
import 'package:quiz_app/views/questions_summary.dart';
import 'package:quiz_app/views/quiz.dart';

import '../model/data/questions.dart';
import '../utils/helperButtonStyles.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({Key? key, required this.startQuiz, required this.chosenAnswers}) : super(key: key);

  final List<String>chosenAnswers;
  final void Function() startQuiz;

  List<Map<String,Object>> getSummaryData(){
    final List<Map<String,Object>> summary=[];
    for(int i=0;i<chosenAnswers.length;i++){
      summary.add({
        'question_index':i,
        'question':questions[i].text,
        'correct_answer':questions[i].answers[0],
        'chosen_answer':chosenAnswers[i]
      });
    }
    return summary;
  }
  @override
  Widget build(BuildContext context) {
    final summaryData=getSummaryData();
    final numTotalQuestions=questions.length;
    final numCorrectQuestions=summaryData.where((data){
      return data['chosen_answer']==data['correct_answer'];
    }).length;

    return SizedBox(
        width: double.infinity,
        child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('You answer $numCorrectQuestions out of $numTotalQuestions questions correctly!',
                    style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center),
                  const SizedBox(height: 30,),
                  QuestionsSummary(summaryData),
                  const SizedBox(height: 30,),
                  ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => const Quiz()),
                              (Route<dynamic> route) => false,
                        );
                      },
                      icon: const Icon(Icons.arrow_right_alt), // Replace with your desired icon
                      label: ShaderMask(
                        shaderCallback: (bounds) {
// Define the gradient colors
                          return const LinearGradient(
                            colors: [Color.fromARGB(255, 49, 120, 116),Color.fromARGB(255, 75, 48, 172)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },child: const Text('Restart Quiz',style: TextStyle(fontWeight: FontWeight.w700 )),),
                      style:HelperButtonStyles.ElevatedButtonStyle(Colors.white,Colors.deepPurpleAccent,16,15.0,8)
                  ),
                ]
            )
        )
    );
  }
}
