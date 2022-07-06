import 'package:flutter/material.dart';

class PaginationWidget extends StatefulWidget {
  final int selectedIndex, indexValue;
  final double radius;
  final bool isVideo;

  const PaginationWidget(
      {Key? key,
      required this.radius,
      required this.selectedIndex,
      required this.indexValue,
      required this.isVideo})
      : super(key: key);

  @override
  State<PaginationWidget> createState() => _PaginationWidgetState();
}

class _PaginationWidgetState extends State<PaginationWidget> {
  @override
  Widget build(BuildContext context) {
    if (!widget.isVideo) {
      return CircleAvatar(
        radius: widget.radius + 0.8,
        backgroundColor: Color(0xff9d9d9d),
        child: CircleAvatar(
          backgroundColor: widget.selectedIndex == widget.indexValue
              ? Color(0xff939393)
              : Color(0xfff2f2f2),
          radius: widget.radius,
        ),
      );
    }

    if (widget.isVideo) {
      return Container(
        // color: Colors.green,
        child: Icon(
          widget.selectedIndex == widget.indexValue
              ? Icons.play_arrow
              : Icons.play_arrow_outlined,
          color: widget.selectedIndex == widget.indexValue
              ? Color(0xff939393)
              : Color(0xfff2f2f2),
          size: 18,
        ),
      );
    }

    return Container();
  }
}
