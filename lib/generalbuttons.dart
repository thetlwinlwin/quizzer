import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  final String trueOrFalse;
  final trueFalseHandler;
  final Color backColor;
  GeneralButton({this.trueOrFalse, this.trueFalseHandler, this.backColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backColor,
          ),
          onPressed: () {
            trueFalseHandler();
          },
          child: Text(
            trueOrFalse,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
