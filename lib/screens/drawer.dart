

import 'package:courierui/components/drawerComponent/drawerList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Container(
        width: 200,
        color: Colors.deepPurple,
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextFormField(
              // cursorColor: Theme.of(context).accentColor,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade300,
                // contentPadding: EdgeInsets.symmetric(horizontal: 20),
                icon: Icon(Icons.search),
                labelText: 'Search',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  // borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child:
              ListView.builder(
                itemCount: allListi.length,
                itemBuilder: (context, index) => allListi[index],
              ),
            )
          ],
        ),
      ),
    );
  }
}
// Container(
// decoration: BoxDecoration(
// gradient: LinearGradient(
// colors: [Colors.blue.shade400, Colors.blue.shade800],
// begin: Alignment.bottomCenter,
// end: Alignment.topCenter)),
// ),