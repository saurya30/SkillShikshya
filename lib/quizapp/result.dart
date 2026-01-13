import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final int score;
  const ResultPage({super.key,required this.score});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result')),
      body: Column(children: [Text('Your score is : ${widget.score}'),]),
    );
  }
}
