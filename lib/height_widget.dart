import 'package:flutter/material.dart';

class HeightWidget extends StatefulWidget {
  const HeightWidget({super.key});

  @override
  State<HeightWidget> createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  int height = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            onChanged: (value){
              setState(() {
                height = value.toInt();
              });
            },
            activeColor: Color(0xffe4e5eb),
            thumbColor: Color(0xffe91255),
          ),
        ],
      ),
    );
  }
}
