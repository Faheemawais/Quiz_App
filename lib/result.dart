import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key? key}) : super(key: key);
  final int ressultscore;
  final void Function() resethandler;

  Result(this.ressultscore, this.resethandler);
  String get resultPharase {
    var resultText;
    if(ressultscore <= 16){
      resultText = 'you are awesome and innocent';
    }
    else if(ressultscore <= 30){
      resultText ='pretty .... likeable';
    }
    else if(ressultscore <= 50){
      resultText = 'you are Strange?!';
    }
    else
      resultText = 'you are bad';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(children: <Widget>[
      Text(resultPharase,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      ElevatedButton(onPressed:resethandler, child: Text('Restart Quiz!'), style: ElevatedButton.styleFrom(primary: Colors.blue),)
    ],
    )
    );
  }
}
