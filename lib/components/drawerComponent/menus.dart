import 'package:flutter/material.dart';

class CustomMenuList extends StatelessWidget {
  final IconButton? icon;
  final String? name;
  final Function()? ontap;

  const CustomMenuList({Key? key, this.icon, this.name, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        leading: icon,
        title: Text(
          name!,
          style: TextStyle(color: Colors.white, fontFamily: 'Glory'),
        ),
      ),
      onTap: ontap,
    );
  }
}
