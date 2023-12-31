import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
 final void Function() selectHandler;
 final String answerText;
 Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
