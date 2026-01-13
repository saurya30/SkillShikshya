import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:skillshiksya3/weather/controller/location_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  getLocationData({required double longitude, required double latitude}) async {
    var uri = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=1f3311499559201f03487cdf3a7133f1',
    );
    http.Response response = await http.get(uri);

    var decodedResponse = jsonDecode(response.body);

    print(decodedResponse['sys']['country']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () async {
                var position = await LocationController.determinePosition();
                getLocationData(
                  longitude: position.longitude,
                  latitude: position.latitude,
                );
              },
              child: const Text('Get Position'),
            ),
          ),
        ],
      ),
    );
  }
}
