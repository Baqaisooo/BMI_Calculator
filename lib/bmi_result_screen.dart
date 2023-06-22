import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final int age;
  final String gender;
  final int bmi;

  const BMIResult(
      {super.key, required this.age, required this.gender, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontFamily: 'ChangaOne',
            color: Color(0xffe2e3e9),
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color(0xff0e1326),
              borderRadius: BorderRadius.circular(50)),
          // alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Result",
                style: TextStyle(
                    color: Color(0xff757585),
                    fontSize: 35,
                    fontWeight: FontWeight.w900),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Age is ",
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "$age",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Gender is ",
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "$gender",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BMI is ",
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "$bmi",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
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
