import 'package:flutter/material.dart';

class Answare extends StatelessWidget {
  final Function onHold;
  final String answareChosen;
  Answare(this.onHold, this.answareChosen);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blueAccent,
      child: RaisedButton(
        child: Text('answare 1'),
        onPressed: onHold,
      ),
    );
  }
}
