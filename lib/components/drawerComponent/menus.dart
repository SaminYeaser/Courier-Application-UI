import 'package:flutter/material.dart';

class CustomMenuList extends StatelessWidget {
  final Icon? icon;
  final String? name;
  const CustomMenuList({Key? key, this.icon, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      leading: icon,
      title: Text(name!,style: TextStyle(color: Colors.white,fontFamily: 'Glory'),),
    );
  }
}
