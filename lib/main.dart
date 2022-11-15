import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//State pertence ao MyApp
class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = [
    'What is the name of...',
    'What is the your god',
    "Flutter god"
  ];

  void onPressAnswer(title) {
    //setState igual react força um rerun
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex += 1;
      } else {
        questionIndex = 0;
      }
    });

    print(title);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Scaffold responsável por criar uma pagina.
      home: Scaffold(
        appBar: AppBar(
          title: Text('My\'s First App'),
        ),
        body: Column(children: [
          Question(questions[questionIndex]),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: () => onPressAnswer('Answer 1'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.pink),
            ),
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: () => onPressAnswer('Answer 2'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.pink),
            ),
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: () => onPressAnswer('Answer 3'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.pink),
            ),
          )
        ]),
      ),
    );
  }
}
