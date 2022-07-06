import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled2/colors.dart';

class DeliveryWidget extends StatefulWidget {
  final String name, address;

  const DeliveryWidget({Key? key, required this.name, required this.address})
      : super(key: key);

  @override
  State<DeliveryWidget> createState() => _DeliveryWidgetState();
}

class _DeliveryWidgetState extends State<DeliveryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            CustomColors.primaryColor.withOpacity(0.6),
            CustomColors.primaryColor.withOpacity(0.3),
          ],
        ),
      ),
      height: 40,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            FontAwesomeIcons.locationDot,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text("Deliver to ${widget.name}"),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 3,
            ),
            child: Text("-"),
          ),
          Text(widget.address),
        ],
      ),
    );
  }
}
