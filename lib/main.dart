import 'package:flutter/material.dart';
import 'quizbrain.dart';
import 'questiondisplay.dart';
import 'generalbuttons.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain listOfQue = QuizBrain();

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: MyApp(),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Icon> trueFalse = [];
  int finalScore = 0;

  void checkAns(bool userChosen) {
    bool correctAnswer = listOfQue.getQueAns();
    setState(() {
      if (listOfQue.isFinished()) {
        double overallScore = finalScore / listOfQue.queLength();
        Alert(
                context: context,
                title: "Show is Over",
                desc: "Overall Score of ${overallScore * 100}%")
            .show();
        listOfQue.reset();
        trueFalse.clear();
      } else {
        if (userChosen == correctAnswer) {
          finalScore++;
          trueFalse.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          trueFalse.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        listOfQue.nextQuestion();
      }
    });
    print(correctAnswer);
    print(finalScore);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        QuestionDisplay(
          queDisplayText: listOfQue.getQueText(),
        ),
        GeneralButton(
          trueFalseHandler: () => checkAns(true),
          backColor: Colors.green,
          trueOrFalse: 'True',
        ),
        GeneralButton(
          trueFalseHandler: () => checkAns(false),
          backColor: Colors.red,
          trueOrFalse: 'False',
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: trueFalse,
          ),
        ),
      ],
    );
  }
}
