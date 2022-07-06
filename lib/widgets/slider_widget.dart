import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  final String imageUrl, title;

  const SliderWidget({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          widget.imageUrl,
          height: 50,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
