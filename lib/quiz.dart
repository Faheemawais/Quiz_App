import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  //const Quiz({Key? key}) : super(key: key);
  final List<Map<String, Object>> questions;
  final int questionindex;
  final void Function(int) answerQuestion;

  Quiz({required this.questions, required this.questionindex, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionindex]['questionText'] as String,
      ),
      ...(questions[questionindex]['answers'] as List<Map<String,Object>>).map((answer) {

        return Answer(() => answerQuestion(answer['score']as int),answer['text'].toString());}).toList()

    ],);
  }
}
