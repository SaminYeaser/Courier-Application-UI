import 'package:courierui/components/button.dart';
import 'package:courierui/screens/home.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            ontap: (){ Get.to(Home());},
          ),
          SizedBox(height: 30,),
          CustomButton(
            image: 'assets/images/fb.png',
            text: 'Sign With Facebook',
            color: Colors.blueAccent,
            ontap: (){ Get.to(Home());},
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
