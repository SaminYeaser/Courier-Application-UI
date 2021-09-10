import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10,20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          Column(
            children: [
                Text('Paypack',style: TextStyle(color: Colors.white,),),
              Text('Powered by Toggles',style: TextStyle(color: Colors.white,),)
            ],
          ),
          Image.asset('assets/images/google.png',width: 20, height: 20,)
        ],
      ),
    );
  }
}
