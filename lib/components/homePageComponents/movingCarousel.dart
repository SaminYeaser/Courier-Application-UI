import 'package:courierui/components/homePageComponents/customCardHome.dart';

import 'package:flutter/material.dart';

class CardSlider extends StatefulWidget {
  const CardSlider({Key? key}) : super(key: key);

  @override
  _CardSliderState createState() => _CardSliderState();
}

class _CardSliderState extends State<CardSlider> {
  List<Widget> listWidget = [
    CustomCardHome(
      title: 'Courier',
      text: '50k+ courier',
    ),
    CustomCardHome(
      title: 'Shipping',
      text: '90k+ shipment',
    ),
    CustomCardHome(
      title: 'Customers',
      text: '150k+ csutomers',
    ),
    CustomCardHome(
      title: 'Courier',
      text: '50k+ courier',
    ),
    CustomCardHome(
      title: 'Shipping',
      text: '90k+ shipment',
    ),
    CustomCardHome(
      title: 'Customers',
      text: '150k+ csutomers',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: listWidget.length,
        itemBuilder: (context, index) => listWidget[index],
        // padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
      ),
    );
  }
}
// CarouselSlider(
// items: listWidget.map((item) => item).toList(),
// options: CarouselOptions(
// // initialPage: 0,
// disableCenter: true,
// autoPlay: false,
// viewportFraction: .5,
// enableInfiniteScroll: false,
// // height: 190,
// onPageChanged: (index, reason) {
// setState(() {
// // _current = index;
// });
// }),
// )
// ListView.builder(
// shrinkWrap: true,
// scrollDirection: Axis.horizontal,
// itemCount: listWidget.length,
// itemBuilder: (context, index) => listWidget[index],
// // padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
// )
