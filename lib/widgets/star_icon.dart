import 'package:flutter/material.dart';

class StarIcon extends StatefulWidget {
  final bool isFilled, isHalf, isEmpty;

  const StarIcon(
      {Key? key,
      this.isFilled = true,
      this.isHalf = false,
      this.isEmpty = false})
      : super(key: key);

  @override
  State<StarIcon> createState() => _StarIconState();
}

class _StarIconState extends State<StarIcon> {
  @override
  Widget build(BuildContext context) {
    if (widget.isFilled) {
      return Icon(
        Icons.star,
        color: Color(0xfffaa517),
        size: 15,
      );
    }
    if (widget.isEmpty) {
      return Icon(
        Icons.star_border,
        color: Color(0xfffaa517),
        size: 15,
      );
    }
    if (widget.isHalf) {
      return Icon(
        Icons.star_half,
        color: Color(0xfffaa517),
        size: 15,
      );
    }
    return Container();
  }
}
