import 'package:courierui/components/loginCredential.dart';
import 'package:courierui/components/welcome.dart';
import 'package:courierui/constants.dart';

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: lightPurple,
            child: Column(
              children: [
                WelcomeSlider(),
                Login()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
