import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? image;
  final String? text;
  final Color? color;
  final Function()? ontap;

  const CustomButton({Key? key, this.image, this.text, this.color, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
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
      ),
      onTap: ontap,
    );
  }
}
