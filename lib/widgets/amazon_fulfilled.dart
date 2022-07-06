import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../style_settings.dart';

class AmazonFulfilled extends StatefulWidget {
  const AmazonFulfilled({Key? key}) : super(key: key);

  @override
  State<AmazonFulfilled> createState() => _AmazonFulfilledState();
}

class _AmazonFulfilledState extends State<AmazonFulfilled> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 90,
          color: Color(0xff3f464d),
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Icon(
                FontAwesomeIcons.amazon,
                size: 15,
                color: Colors.white,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                "Fulfilled",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: StyleSettings.fontSize,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: -9,
          top: 1,
          child: Transform.rotate(
            angle: 1233580,
            child: Container(
              color: Colors.white,
              width: 17,
              height: 17,
            ),
          ),
        ),
      ],
    );
  }
}
