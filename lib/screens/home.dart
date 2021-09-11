import 'package:courierui/components/homePageComponents/bottomHeader.dart';

import 'package:courierui/components/homePageComponents/movingCarousel.dart';

import 'package:courierui/constants.dart';
import 'package:courierui/screens/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _scafoldKey = GlobalKey<ScaffoldState>();
  // double xOffset = 0;
  // double yOffset = 0;
  // double scaleFactor = 1;
  //
  // bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldKey,
      drawer: Drawer(
        child: CustomDrawer(),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: 720,
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        color: purple,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // isDrawerOpen
                                //     ?
                            IconButton(
                                        icon: Icon(Icons.menu),
                                        onPressed: () {
                                          setState(() =>_scafoldKey.currentState!.openDrawer());
                                          // xOffset = 0;
                                          // yOffset = 0;
                                          // scaleFactor = 1;
                                          // isDrawerOpen = false;
                                        },
                                      )
                                    // : IconButton(
                                    //     icon: Icon(Icons.menu),
                                    //     onPressed: () {
                                    //       setState(() {
                                    //
                                    //         // xOffset = 230;
                                    //         // yOffset = 150;
                                    //         // scaleFactor = 0.6;
                                    //         // isDrawerOpen = true;
                                    //       });
                                    //     })
                                    ,
                                Column(
                                  children: [
                                    Text(
                                      'Paypack',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Powered by Toggles',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                Image.asset(
                                  'assets/images/google.png',
                                  width: 20,
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          HeaderBottom(),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'My Services',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontFamily: 'Glory'),
                                ),
                                Text(
                                  'View All',
                                  style: TextStyle(
                                      color: Colors.orange, fontSize: 15),
                                )
                              ],
                            ),
                            CardSlider()
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
  }
}
// transform:
// Matrix4.translationValues(xOffset, yOffset, 0)
// ..scale(scaleFactor)
// ..rotateY(isDrawerOpen ? -0.5 : 0),
// duration: Duration(milliseconds: 500),
//
// decoration: BoxDecoration(
// color: Colors.orange,
//
// borderRadius: BorderRadius.circular(isDrawerOpen?40:0.0)