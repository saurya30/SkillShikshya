import 'dart:math';

import 'package:flutter/material.dart';

class RockPaperScissor extends StatefulWidget {
  const RockPaperScissor({super.key});

  @override
  State<RockPaperScissor> createState() => _RockPaperScissorState();
}

class _RockPaperScissorState extends State<RockPaperScissor> {
  int randomNumber1 = 0;
  int randomNumber2 = 0;

  int countPlayer1 = 0;
  int countPlayer2 = 0;

  List<String> images = [
    'assets/images/rock.png',
    'assets/images/paper.png',
    'assets/images/scissor.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image.jpg'),
            fit: BoxFit.contain,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(shape: RoundedRectangleBorder()),
                onPressed: () {
                  if (countPlayer1 <= countPlayer2) {
                    randomNumber1 = Random().nextInt(3);
                    countPlayer1++;
                  } else {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.transparent,
                        content: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Alert!!!',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Please wait for player 2',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  setState(() {});
                },
                child: SizedBox(
                  width: double.infinity,
                  child: RotatedBox(
                    quarterTurns: 2,
                    child: Image.asset(images[randomNumber1]),
                  ),
                ),
              ),
            ),
            Divider(color: Colors.white),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(shape: RoundedRectangleBorder()),
                onPressed: () {
                  if (countPlayer2 <= countPlayer1) {
                    randomNumber2 = Random().nextInt(3);
                    countPlayer2++;
                  } else {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.transparent,
                        content: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Alert!!!',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Please wait for player 1',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  setState(() {});
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(images[randomNumber2]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
