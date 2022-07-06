import 'package:flutter/material.dart';

class LinePassword extends StatefulWidget {
  final Color? color;

  const LinePassword({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  State<LinePassword> createState() => _LinePasswordState();
}

class _LinePasswordState extends State<LinePassword> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 2,
        width: double.infinity,
        color: widget.color,
      ),
    );
  }
}
