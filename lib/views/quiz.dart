import 'package:flutter/material.dart';
import 'package:quiz_app/model/data/questions.dart';
import 'package:quiz_app/views/questions_screen.dart';
import 'package:quiz_app/views/results_Screen.dart';
import 'package:quiz_app/views/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  List<String> selectedAnswers=[];
  var activeScreen = 'start-screen';

  /*@override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }*/
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length==questions.length){
      setState(() {
        activeScreen='results-screen';
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    /*final screenWidget=activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : const QuestionsScreen();*/
    Widget screenWidget=StartScreen(switchScreen);
    if(activeScreen=='questions-screen'){
      screenWidget=QuestionsScreen(onSelectedAnswer: chooseAnswer,);
    }else if(activeScreen=='results-screen'){
      screenWidget=ResultsScreen(startQuiz: switchScreen,chosenAnswers: selectedAnswers,);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 75, 48, 172),
            Color.fromRGBO(143, 148, 251, 1)
          ])),
          child: screenWidget,
        ),
      ),
    );
  }
}
