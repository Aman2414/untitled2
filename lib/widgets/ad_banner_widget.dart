import 'package:flutter/material.dart';

import '../colors.dart';

class AdBannerWidget extends StatefulWidget {
  final String imageUrl, title, price;
  final double imageSize, gapSize;
  final EdgeInsetsGeometry? padding;
  final Color bgColor;

  const AdBannerWidget({
    Key? key,
    required this.title,
    required this.price,
    this.imageSize = 20,
    this.gapSize = 10,
    required this.imageUrl,
    this.padding,
    this.bgColor  = const Color(0xfff7f9f8),
  }) : super(key: key);

  @override
  State<AdBannerWidget> createState() => _AdBannerWidgetState();
}

class _AdBannerWidgetState extends State<AdBannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: widget.bgColor,
      padding: widget.padding,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Image.network(
            widget.imageUrl,
            height: widget.imageSize,
          ),
          SizedBox(
            width: widget.gapSize,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    widget.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "₹ ${widget.price}",
                      style: TextStyle(
                        color: CustomColors.priceColor,
                      ),
                    ),
                    Icon(
                      Icons.done,
                      color: Color(0xffe39932),
                      size: 12,
                    ),
                    Text(
                      "prime",
                      style: TextStyle(
                        color: CustomColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
