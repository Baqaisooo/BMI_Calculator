import 'dart:math';

import 'package:bmi_calculator/age_counter_widget.dart';
import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:bmi_calculator/weight_counter_widget.dart';
import 'package:bmi_calculator/height_widget.dart';
import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  bool isMale = true;
  int height = 10;
  int weight = 70;
  int age = 27;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontFamily: 'ChangaOne',
            color: Color(0xffe2e3e9),
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Colors.blueGrey : Color(0xff0e1326),
                        ),
                        height: double.maxFinite,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 90,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(
                                  color: isMale
                                      ? Color(0xff0e1326)
                                      : Color(0xff757585),
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Color(0xff0e1326) : Colors.blueGrey,
                        ),
                        height: double.maxFinite,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 90,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                    color: isMale
                                        ? Color(0xff757585)
                                        : Color(0xff0e1326),
                                    fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color(0xff0e1326),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff757585),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${height}",
                          style: TextStyle(
                            height: 1.2,
                            fontSize: 70,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff757585),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      min: 10,
                      value: height.toDouble(),
                      max: 250,
                      onChanged: (value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                      activeColor: Color(0xffe4e5eb),
                      thumbColor: Color(0xffe91255),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff0e1326),
                          borderRadius: BorderRadius.circular(15)),
                      height: double.maxFinite,
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(
                                color: Color(0xff757585),
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "${weight}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 70,
                                height: 1.2,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MaterialButton(
                                  padding: EdgeInsets.all(0),
                                  minWidth: double.minPositive,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xff4b4f5f),
                                    child: Icon(
                                      Icons.remove,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                MaterialButton(
                                  padding: EdgeInsets.all(0),
                                  minWidth: double.minPositive,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xff4b4f5f),
                                    child: Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff0e1326),
                          borderRadius: BorderRadius.circular(15)),
                      height: double.maxFinite,
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "AGE",
                              style: TextStyle(
                                color: Color(0xff757585),
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "${age}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 70,
                                height: 1.2,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MaterialButton(
                                  padding: EdgeInsets.all(0),
                                  minWidth: double.minPositive,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xff4b4f5f),
                                    child: Icon(
                                      Icons.remove,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                MaterialButton(
                                  padding: EdgeInsets.all(0),
                                  minWidth: double.minPositive,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xff4b4f5f),
                                    child: Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {
              double result = weight / pow(height / 100, 2);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BMIResult(age: age, gender: isMale? "MALE": "FEMALE", bmi: result.toInt()),
                ),
              );
            },
            color: Color(0xffe91255),
            minWidth: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "CALCULATE",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
