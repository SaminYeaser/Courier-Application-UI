import 'package:courierui/components/homePageComponents/bottomHeader.dart';
import 'package:courierui/components/homePageComponents/header.dart';
import 'package:courierui/components/homePageComponents/textFieldCustom.dart';
import 'package:courierui/constants.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: lightPurple,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: purple,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      Header(),
                      SizedBox(height: 20,),
                      HeaderBottom(),
                      SizedBox(height: 20,),

                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
