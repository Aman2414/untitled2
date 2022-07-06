import 'package:flutter/material.dart';

import '../colors.dart';

class PointsWidget extends StatefulWidget {
  final String points;

  const PointsWidget({Key? key, required this.points}) : super(key: key);

  @override
  State<PointsWidget> createState() => _PointsWidgetState();
}

class _PointsWidgetState extends State<PointsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.points,
          style: TextStyle(
            color: CustomColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          " points",
          style: TextStyle(
            fontSize: 9,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
