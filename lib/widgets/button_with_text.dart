import 'package:flutter/material.dart';

class ButtonWithText extends StatefulWidget {
  final Color bgColor;
  final String title;

  const ButtonWithText({Key? key, required this.bgColor, required this.title})
      : super(key: key);

  @override
  State<ButtonWithText> createState() => _ButtonWithTextState();
}

class _ButtonWithTextState extends State<ButtonWithText> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.bgColor,
      borderRadius: BorderRadius.circular(5),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        height: 40,
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: Center(
            child: Text(widget.title),
          ),
        ),
      ),
    );
  }
}
