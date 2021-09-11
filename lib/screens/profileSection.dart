import 'package:courierui/components/profilePageComponent/profileContainer.dart';
import 'package:courierui/components/profilePageComponent/profilePic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [SizedBox(
                  height: 30,
                  child: IconButton(
                    alignment: Alignment.topLeft,
                    onPressed: () {Get.off(Home());},
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),

                  ProfileAvatar(),
                  Column(
                    children: [
                      Text(
                        ' Samin Yeaser',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Software Engineer',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              ProfileContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
