import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.questionSummaryData, {super.key});

  final List<Map<String, Object>> questionSummaryData;

  @override
  Widget build(BuildContext context) {
    print('SIZE:>>>>>>>' + questionSummaryData.length.toString());
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: questionSummaryData.map((data) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              CircleAvatar(
              backgroundColor:data['chosen_answer']==data['correct_answer']? Colors.cyan:Colors.grey,
                child:Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['question'] as String,style: const TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,fontSize: 16),),
                      const SizedBox(height: 10,),
                      Text(data['chosen_answer'] as String,style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 14),),
                      Text(data['correct_answer'] as String,style: const TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 14),),
                      const SizedBox(height: 15,),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
