import 'package:courierui/constants.dart';
import 'package:flutter/material.dart';

class WelcomeCard extends StatelessWidget {
  final String? title;
  final String? text;

  const WelcomeCard({Key? key, this.title, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        color: lightWhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              title!,
              style: TextStyle(fontSize: 30, fontFamily: 'Glory',fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Text(
              text!,
              style: TextStyle(fontSize: 20, fontFamily: 'Glory'),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
