import 'package:courierui/constants.dart';
import 'package:flutter/material.dart';

class CustomCardHome extends StatelessWidget {
  final String? title;
  final String? text;

  const CustomCardHome({Key? key, this.title, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        color: lightPurple,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ClipRect(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/person.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                title!,
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Glory'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                text!,
                style: TextStyle(fontFamily: 'Glory'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
