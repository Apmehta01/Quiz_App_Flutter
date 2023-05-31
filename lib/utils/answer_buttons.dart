import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  // AnswerButton(this.answerText,this.onTap,{Key? key}) : super(key: key);
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      onPressed: onTap,
      child: Text(answerText,textAlign: TextAlign.center,),
    );
  }
}
