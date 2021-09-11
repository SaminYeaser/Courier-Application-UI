import 'package:courierui/screens/drawer.dart';
import 'package:courierui/screens/home.dart';
import 'package:courierui/screens/map.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    HomePage()
  );
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Courier App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(body: MapSection())
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
