import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

//State pertence ao MyApp
class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = ['What is the name of...', 'What is the your god '];

  void onPressAnswer(title) {
    //setState igual react força um rerun
    setState(() {
      if (questionIndex <= questions.length) {
        questionIndex += 1;
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
          Text(questions[questionIndex]),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: () => onPressAnswer('Answer 1'),
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: () => onPressAnswer('Answer 2'),
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: () => onPressAnswer('Answer 3'),
          )
        ]),
      ),
    );
  }
}
