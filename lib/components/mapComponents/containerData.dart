import 'package:flutter/material.dart';

class ContainerData extends StatelessWidget {
  const ContainerData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height: 15,
          thickness: 3,
          indent: 180,
          endIndent: 180,
          color: Colors.black,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    '1h 20min',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 20,
                        fontFamily: 'Glory',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                        decoration: TextDecoration.none),
                  ),
                  Text(
                    'Delivery Time',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontFamily: 'Glory',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        decoration: TextDecoration.none),
                  )
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('In Process to receiver'),
          subtitle: Text('Poznan, Poland'),
          trailing: Text('00:00 PM'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('In Process to receiver'),
          subtitle: Text('Dhaka, Bangladesh'),
          trailing: Text('12:00 PM'),
        )
      ],
    );
  }
}
