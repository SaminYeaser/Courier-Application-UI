import 'package:courierui/components/button.dart';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
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
            text: 'Sign With Facebook',
            color: Colors.blueAccent,
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have account?'),
              Text(
                'Sign Up!',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
