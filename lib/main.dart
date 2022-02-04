import 'package:flutter/material.dart';
import 'Screens/inputPage.dart';
import 'package:bmi_calculator/Screens/results.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'calculate': (context) => ResultPage(),

      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        primaryColor: Color(0xff0A0D21),
        scaffoldBackgroundColor: Color(0xff0A0D22),
      ),
      home: InputPage(),
    );
  }
}

