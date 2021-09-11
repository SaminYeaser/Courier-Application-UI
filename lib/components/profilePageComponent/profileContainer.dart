import 'package:courierui/constants.dart';
import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
          color: lightPurple, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '95%',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,fontFamily: 'Glory'),
                    ),
                    Text('Complete',style: TextStyle(fontSize: 20,fontFamily: 'Glory'))
                  ],
                ),
                Column(
                  children: [
                    Text('20',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,fontFamily: 'Glory'),),
                    Text('Shipping',style: TextStyle(fontSize: 20,fontFamily: 'Glory'))
                  ],
                ),
                Column(
                  children: [
                    Text('20',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,fontFamily: 'Glory'),),
                    Text('Bookmark',style: TextStyle(fontSize: 20,fontFamily: 'Glory'))
                  ],
                )
              ],
            ),
          ),
          Divider(thickness: 2,indent: 10,endIndent: 10,),

        ],
      ),
    );
  }
}
