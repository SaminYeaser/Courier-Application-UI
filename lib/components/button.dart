import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? image;
  final String? text;
  final Color? color;

  const CustomButton({Key? key, this.image, this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image!,
              width: 20,
              height: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
