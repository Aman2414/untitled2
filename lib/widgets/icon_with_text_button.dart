import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWithTextButton extends StatefulWidget {
  final String title;
  final IconData? iconData;
  final void Function()? onTap;
  final EdgeInsets? padding;
  final Color? bgColor, titleColor;
  final Color borderColor;

  const IconWithTextButton({
    Key? key,
    required this.title,
    this.iconData,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(vertical: 10),
    this.bgColor = Colors.white,
    this.titleColor = const Color(0xff898989),
    this.borderColor = const Color(0xff9b94d7),
  }) : super(key: key);

  @override
  State<IconWithTextButton> createState() => _IconWithTextButtonState();
}

class _IconWithTextButtonState extends State<IconWithTextButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.bgColor,
      borderRadius: BorderRadius.circular(3),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: widget.borderColor,
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(3),
          onTap: widget.onTap,
          child: Container(
            padding: widget.padding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.iconData != null
                    ? Row(
                        children: [
                          Icon(
                            widget.iconData,
                            color: Color(0xff210edf),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      )
                    : SizedBox(),
                Text(
                  widget.title,
                  style: TextStyle(
                    color: widget.titleColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
