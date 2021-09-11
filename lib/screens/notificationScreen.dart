
import 'package:courierui/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:get/get.dart';

class NotificationPage extends StatelessWidget {

  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            IconButton(
              alignment: Alignment.topLeft,
              icon: Icon(Icons.arrow_back_ios_outlined),
              onPressed: () {
                Get.off(Home());
              },
            ),
            SizedBox(height: 30,),
            ClipRect(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.asset(
                  'assets/images/person.png',
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            SizedBox(height: 40,),
            Text('Receive Notifications',style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                // fontFamily: 'Glory',
                fontWeight: FontWeight.w500,
              letterSpacing: 2

            ),),
            SizedBox(height: 40,),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',style: TextStyle(
              color: Colors.black,
              fontSize: 15,fontFamily: 'Glory'
            ),textAlign: TextAlign.center,),
            SizedBox(height: 50,),
        GestureDetector(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('Notify Me',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
            ),
          ),
          onTap: (){},
        )
          ],
        ),
      ),
    );
  }
}
