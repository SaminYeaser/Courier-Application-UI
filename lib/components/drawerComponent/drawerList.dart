import 'package:courierui/screens/home.dart';
import 'package:courierui/screens/map.dart';
import 'package:courierui/screens/notificationScreen.dart';
import 'package:courierui/screens/profileSection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

import 'menus.dart';

List<Widget> allListi = [
  CustomMenuList(
    icon: IconButton(
      icon: Icon(Icons.location_city),
      color: Colors.white,
      onPressed: () {Get.to(Home());}
    ),
    name: 'Home',
    ontap: (){Get.to(Home());},
  ),
  CustomMenuList(
    icon: IconButton(
      icon: Icon(Icons.analytics),
      onPressed: () {Get.to(MapSection());},
      color: Colors.white,
    ),
    name: 'Map',
    ontap: () {Get.to(MapSection());},
  ),
  CustomMenuList(
    icon: IconButton(
      icon: Icon(Icons.local_shipping),
      onPressed: () {Get.to(ProfilePage());},
      color: Colors.white,
    ),
    name: 'Shipping',
    ontap: () {Get.to(ProfilePage());},
  ),
  // CustomMenuList(
  //   icon: IconButton(
  //     icon: Icon(Icons.account_balance_wallet_rounded),
  //     onPressed: () {},
  //     color: Colors.white,
  //   ),
  //   name: 'Courier',
  // ),
  // CustomMenuList(
  //   icon: IconButton(
  //     icon: Icon(Icons.card_membership_sharp),
  //     onPressed: () {},
  //     color: Colors.white,
  //   ),
  //   name: 'Shipping label',
  // ),
  CustomMenuList(
    icon: IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {Get.to(NotificationPage());},
      color: Colors.white,
    ),
    name: 'Notification',
    ontap: () {Get.to(NotificationPage());},
  ),
  // CustomMenuList(
  //   icon: IconButton(
  //     icon: Icon(Icons.bookmark),
  //     onPressed: () {},
  //     color: Colors.white,
  //   ),
  //   name: 'Bookmark',
  // ),
  // CustomMenuList(
  //   icon: IconButton(
  //     icon: Icon(Icons.settings),
  //     onPressed: () {},
  //     color: Colors.white,
  //   ),
  //   name: 'Setting',
  // ),
  // CustomMenuList(
  //   icon: IconButton(
  //     icon: Icon(Icons.help),
  //     onPressed: () {},
  //     color: Colors.white,
  //   ),
  //   name: 'Help & Support',
  // ),
];