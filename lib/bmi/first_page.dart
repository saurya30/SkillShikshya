import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 3.0,
        shadowColor: Colors.grey,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(5, 5),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '20',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                style: IconButton.styleFrom(
                                  shape: CircleBorder(),
                                  elevation: 5,
                                  backgroundColor: Colors.white,
                                  shadowColor: Colors.black,
                                ),
                                onPressed: () {},
                                icon: Icon(Icons.add, color: Color(0xFF586EE6)),
                              ),
                              SizedBox(width: 16),
                              IconButton(
                                style: IconButton.styleFrom(
                                  shape: CircleBorder(),
                                  elevation: 5,
                                  backgroundColor: Colors.white,
                                  shadowColor: Colors.black,
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove,
                                  color: Color(0xFF586EE6),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(5, 5),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Gender',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.man, size: 70),
                              Icon(Icons.woman, size: 70),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: LiteRollingSwitch(
                                  value: true,
                                  width: 150,
                                  textOn: 'active',
                                  textOff: 'inactive',
                                  colorOn: Colors.deepOrange,
                                  colorOff: Colors.blueGrey,
                                  iconOn: Icons.lightbulb_outline,
                                  iconOff: Icons.power_settings_new,
                                  animationDuration: const Duration(
                                    milliseconds: 300,
                                  ),
                                  onChanged: (bool state) {
                                    print('turned ${(state) ? 'on' : 'off'}');
                                  },
                                  onDoubleTap: () {},
                                  onSwipe: () {},
                                  onTap: () {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
