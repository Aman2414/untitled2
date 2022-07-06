import 'package:flutter/material.dart';

class TwoTextWidget extends StatefulWidget {
  final String title1, title2;

  const TwoTextWidget({Key? key, required this.title1, required this.title2})
      : super(key: key);

  @override
  State<TwoTextWidget> createState() => _TwoTextWidgetState();
}

class _TwoTextWidgetState extends State<TwoTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            maxLines:2,
            widget.title1,
          ),
        ),
        Expanded(
          child: Text(
            maxLines:2,
            widget.title2,
          ),
        ),
      ],
    );
  }
}
