import 'package:flutter/material.dart';

class QuestionDisplay extends StatelessWidget {
  final String queDisplayText;
  QuestionDisplay({this.queDisplayText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 15,
      child: Center(
        child: Text(
          queDisplayText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
