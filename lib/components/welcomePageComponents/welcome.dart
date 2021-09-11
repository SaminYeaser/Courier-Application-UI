import 'package:courierui/components/welcomePageComponents/welcomeCard.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WelcomeSlider extends StatefulWidget {
  const WelcomeSlider({Key? key}) : super(key: key);

  @override
  _WelcomeSliderState createState() => _WelcomeSliderState();
}

class _WelcomeSliderState extends State<WelcomeSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> listWidget = [
    WelcomeCard(
      title: 'Welcome to Paypack',
      text: 'You can send items, track and be a courier in this app',
    ),
    WelcomeCard(
      title: 'Welcome to Paypack',
      text: 'You can send items, track and be a courier in this app',
    ),
    WelcomeCard(
      title: 'Welcome to Paypack',
      text: 'You can send items, track and be a courier in this app',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: listWidget.map((item) => item).toList(),
          options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              height: 300,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: listWidget.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 7.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.deepPurple)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
