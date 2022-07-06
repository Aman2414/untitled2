import 'package:flutter/material.dart';
import 'package:untitled2/colors.dart';
import 'package:untitled2/widgets/points_widget.dart';

class ProductWidget extends StatefulWidget {
  final String imageUrl, title, points;
  final double? imageHeight, fontSize;

  const ProductWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.points,
    this.imageHeight = 200,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.backgroundColor,
      child: Column(
        children: [
          Image.network(
            widget.imageUrl,
            height: widget.imageHeight,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: widget.fontSize,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: PointsWidget(
              points: widget.points,
            ),
          ),
        ],
      ),
    );
  }
}
