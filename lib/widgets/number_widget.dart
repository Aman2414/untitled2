import 'package:flutter/material.dart';

class NumberWidget extends StatefulWidget {
  final String mainTitle;
  final String subTitle;

  const NumberWidget(
      {Key? key, required this.mainTitle, required this.subTitle})
      : super(key: key);

  @override
  State<NumberWidget> createState() => _NumberWidgetState();
}

class _NumberWidgetState extends State<NumberWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.mainTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        Text(
          widget.subTitle,
          style: TextStyle(
            fontSize: 8,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
