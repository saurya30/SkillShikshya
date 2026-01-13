import 'package:flutter/material.dart';
import 'package:skillshiksya3/weather/splash_screen.dart';
import 'package:skillshiksya3/weather/weather_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const SplashScreen(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 152, 0, 1),
      floatingActionButton: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                _count++;
                setState(() {});
              },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                _count--;
                setState(() {});
              },
              child: Icon(Icons.minimize_outlined),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Counter App', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Text(
          "You have pushed the button $_count times",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
    );
  }
}
