import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ChartSection extends StatelessWidget {
  final String? title;
  final String? text;
  final int? percentage;

  const ChartSection({Key? key, this.title, this.text, this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.person_outline,
            color: Colors.black,
          ),
          Column(children: [
            Text(
              title!,
              style: TextStyle(fontSize: 20),
            ),
            Text(text!)
          ]),
          CircularPercentIndicator(
            radius: 80.0,
            lineWidth: 10.0,
            animation: true,
            percent: percentage! / 100,
            animationDuration: 1000,
            center: Text(
              '$percentage%',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            // backgroundColor: Colors.grey[300],
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
