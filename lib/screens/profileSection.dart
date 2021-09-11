import 'package:courierui/components/profilePageComponent/profileContainer.dart';
import 'package:courierui/components/profilePageComponent/profilePic.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileAvatar(),
                  Column(
                    children: [
                      Text(' Samin Yeaser',style: TextStyle(fontSize: 20),),
                      Text('Software Engineer',style: TextStyle(fontSize: 10),)
                    ],
                  ),
                  Icon(Icons.settings,color: Colors.deepPurple,)

                ],
              ),
              SizedBox(height: 10,),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',textAlign: TextAlign.center,),
              SizedBox(height: 20,),
              ProfileContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
