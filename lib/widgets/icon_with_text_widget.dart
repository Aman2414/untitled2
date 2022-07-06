import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors.dart';

class IconWithTextWidget extends StatefulWidget {
  final void Function()? onLongPress, onLongPressCancel, onTap;
  final IconData iconData;
  final String title;
  final Color? textColor;

  const IconWithTextWidget({
    Key? key,
    this.onLongPress,
    this.onLongPressCancel,
    required this.iconData,
    required this.title,
    this.onTap,
    this.textColor,
  }) : super(key: key);

  @override
  State<IconWithTextWidget> createState() => _IconWithTextWidgetState();
}

class _IconWithTextWidgetState extends State<IconWithTextWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onLongPress: widget.onLongPress,
      onLongPressCancel: widget.onLongPressCancel,
      child: Container(
        height: 100,
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: FaIcon(
                widget.iconData,
                size: 20,
              ),
            ),
            Flexible(
              child: Text(
                widget.title,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: widget.textColor?? CustomColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
