import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:bmi_calculator/bmi_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BMICalculator(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Color(0xff080d20),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff080c21),
          centerTitle: true,
        ),
        fontFamily: 'Changa'
      ),
    );
  }
}
