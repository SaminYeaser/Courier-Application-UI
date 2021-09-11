import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menus.dart';

List<Widget> allListi = [
  CustomMenuList(
    icon: Icon(
      Icons.my_location,
      color: Colors.white54,
    ),
    name: 'Home',
  ),
  CustomMenuList(
    icon: Icon(
      Icons.analytics,
      color: Colors.white,
    ),
    name: 'Analytics',
  ),
  CustomMenuList(
    icon: Icon(
      Icons.local_shipping,
      color: Colors.white,
    ),
    name: 'Shipping',
  ),
  CustomMenuList(
    icon: Icon(
      Icons.account_balance_wallet_rounded,
      color: Colors.white,
    ),
    name: 'Courier',
  ),
  CustomMenuList(
    icon: Icon(
      Icons.card_membership_sharp,
      color: Colors.white,
    ),
    name: 'Shipping label',
  ),
  CustomMenuList(
    icon: Icon(
      Icons.notifications,
      color: Colors.white,
    ),
    name: 'Notification',
  ),
  CustomMenuList(
    icon: Icon(
      Icons.bookmark,
      color: Colors.white,
    ),
    name: 'Bookmark',
  ),
  CustomMenuList(
    icon: Icon(
      Icons.settings,
      color: Colors.white,
    ),
    name: 'Setting',
  ),
  CustomMenuList(
    icon: Icon(
      Icons.help,
      color: Colors.white,
    ),
    name: 'Help & Support',
  ),
];