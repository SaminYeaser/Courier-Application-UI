
import 'package:courierui/screens/home.dart';
import 'package:courierui/screens/map.dart';
import 'package:courierui/screens/notificationScreen.dart';
import 'package:courierui/screens/profileSection.dart';
import 'package:courierui/screens/welcomePage.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Courier App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: WelcomePage(),
      ),
      getPages: [
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/mapSection', page: () => MapSection()),
        GetPage(name: '/profile', page: () => ProfilePage()),
        GetPage(name: '/welcome', page: () => WelcomePage()),
        GetPage(name: '/notification', page: () => NotificationPage()),
        // Dynamic route
      ],
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
