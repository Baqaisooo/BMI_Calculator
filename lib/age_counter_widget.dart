

import 'package:flutter/material.dart';

class AgeCounterWidget extends StatefulWidget {

  @override
  State<AgeCounterWidget> createState() => _AgeCounterWidgetState();
}

class _AgeCounterWidgetState extends State<AgeCounterWidget> {

  int weight = 25;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
