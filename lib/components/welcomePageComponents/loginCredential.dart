import 'package:courierui/components/button.dart';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
          CustomButton(
            image: 'assets/images/google.png',
            text: 'Sign With Google',
            color: Colors.white,
          ),
          SizedBox(height: 30,),
          CustomButton(
            image: 'assets/images/fb.png',
            text: 'Sign With Google',
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
