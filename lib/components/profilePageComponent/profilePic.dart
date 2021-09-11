import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Stack(
        children: [
          Material(
            // color: Colors.grey,
            // shape: CircleBorder(),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.asset(
                  'assets/images/person.png',
                  width: 70,
                  height: 70,
                ),
              ),
            ),
          ),
          Positioned(
              top: 42,
              left: 35,
              child: Container(
                height: 20,
                padding: EdgeInsets.all(10),
                // decoration: BoxDecoration(
                //   color: Colors.green,
                //   shape: BoxShape.circle,
                // ),
                child: Icon(
                  Icons.settings,
                  color: Colors.blueAccent,
                  size: 25,
                ),
              )),
        ],
      ),
    );
  }
}
