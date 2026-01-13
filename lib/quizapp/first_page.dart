import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skillshiksya3/quizapp/question_bank.dart';
import 'package:skillshiksya3/quizapp/result.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final int totalSeconds = 30;
  int currentSeconds = 0;
  int currentQuestionNumber = 1;
  int score = 0;

  Timer? _timer;

  void startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      currentSeconds++;

      setState(() {});

      if (currentSeconds == 30) {
        currentSeconds = 0;
        currentQuestionNumber++;
      }
    });
  }

  changeQuestion() {
    currentSeconds = 0;
    startTimer();
    if (currentQuestionNumber < allQuestions.length) {
      currentQuestionNumber++;
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ResultPage(score: score)),
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz App',
          style: GoogleFonts.archivo(fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Question',
                style: GoogleFonts.archivo(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                '$currentQuestionNumber/${allQuestions.length}',
                style: GoogleFonts.archivo(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircularProgressIndicator(
                    value: currentSeconds / totalSeconds,
                    color: Color(0xff1a00a3),
                    strokeCap: StrokeCap.round,
                    constraints: BoxConstraints(minHeight: 55, minWidth: 55),
                  ),
                  Text(
                    currentSeconds.toString(),
                    style: GoogleFonts.archivo(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            LinearProgressIndicator(
              value: currentQuestionNumber / allQuestions.length,
              borderRadius: BorderRadius.circular(12),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xfffcdef9),
                border: Border.all(color: Color(0xFFECB9EC)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                allQuestions[currentQuestionNumber - 1].question,
                style: GoogleFonts.archivo(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 20),
            OptionWidget(
              option: 'a',
              answer: allQuestions[currentQuestionNumber - 1].options[0],
              tap: () {
                if (allQuestions[currentQuestionNumber - 1].options[0] ==
                    allQuestions[currentQuestionNumber - 1].correctAnswer) {
                  score++;
                }
                changeQuestion();
              },
            ),
            SizedBox(height: 12),
            OptionWidget(
              option: 'b',
              answer: allQuestions[currentQuestionNumber - 1].options[1],
              tap: () {
                if (allQuestions[currentQuestionNumber - 1].options[1] ==
                    allQuestions[currentQuestionNumber - 1].correctAnswer) {
                  score++;
                }
                changeQuestion();
              },
            ),
            SizedBox(height: 12),
            OptionWidget(
              option: 'c',
              answer: allQuestions[currentQuestionNumber - 1].options[2],
              tap: () {
                if (allQuestions[currentQuestionNumber - 1].options[2] ==
                    allQuestions[currentQuestionNumber - 1].correctAnswer) {
                  score++;
                }
                changeQuestion();
              },
            ),
            SizedBox(height: 12),
            OptionWidget(
              option: 'd',
              answer: allQuestions[currentQuestionNumber - 1].options[3],
              tap: () {
                if (allQuestions[currentQuestionNumber - 1].options[0] ==
                    allQuestions[currentQuestionNumber - 1].correctAnswer) {
                  score++;
                }
                changeQuestion();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  final String answer;
  final String option;
  final void Function()? tap;
  const OptionWidget({
    super.key,
    required this.answer,
    required this.option,
    required this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: tap,
      tileColor: Color(0xFFF6F6F6),
      title: Text(
        answer,
        style: GoogleFonts.archivo(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      leading: CircleAvatar(
        radius: 15,
        backgroundColor: Color(0xFFFDD6D9),
        child: Text(
          option,
          style: GoogleFonts.archivo(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
