import 'package:flutter/material.dart';

class WeatherUi extends StatefulWidget {
  const WeatherUi({super.key});

  @override
  State<WeatherUi> createState() => _WeatherUiState();
}

class _WeatherUiState extends State<WeatherUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Image.asset('assets/images/search.png')]),
      body: Column(
        children: [
          Text('London'),
          SizedBox(height: 8),
          Text('Cludy'),
          SizedBox(height: 16),
          Image.asset('assets/images/cloud.png'),
          SizedBox(height: 10),

          Text('51°'),
          SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset('assets/images/wind.png'),
                  Text('106 km/h'),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/precipitation.png'),
                  Text('22%'),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/umbrella.png'),
                  Text('11%'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
