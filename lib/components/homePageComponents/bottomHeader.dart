import 'package:flutter/material.dart';

class HeaderBottom extends StatefulWidget {
  const HeaderBottom({Key? key}) : super(key: key);

  @override
  _HeaderBottomState createState() => _HeaderBottomState();
}

class _HeaderBottomState extends State<HeaderBottom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Track Your Shipment',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Glory',
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
                letterSpacing: 2),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Please enter your tracking number',
            style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontFamily: 'Glory',
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
                letterSpacing: 2),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
