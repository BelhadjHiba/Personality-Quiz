import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;

  Result(this.resultScore, this.reset);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'you are amazing!';
    } else if (resultScore <= 10) {
      resultText = 'you are real ';
    } else {
      resultText = 'yoou are baad!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: reset,
              child: Text('restart Quiz!'),
              textColor: Colors.blue),
        ],
      ),
    );
  }
}
