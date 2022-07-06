import 'package:flutter/material.dart';

class ItemWidget extends StatefulWidget {
  final void Function(bool?)? onChanged;
  final String price, title2, title1;

  const ItemWidget(
      {Key? key,
      this.onChanged,
      required this.price,
      required this.title2,
      required this.title1})
      : super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 2,
          color: Colors.grey,
        ),
        Row(
          children: [
            Checkbox(value: true, onChanged: widget.onChanged),
            Container(
              width: 2,
              color: Colors.grey,
            ),
            Column(
              children: [
                Text(
                  "This item: ${widget.title1}",
                ),
                Text(
                  "Size: ${widget.title2}",
                ),
                Text(
                  widget.price,
                ),
                Text(
                  "FREE Shipping",
                ),
              ],
            ),
          ],
        ),
        Container(
          height: 2,
          color: Colors.grey,
        ),
      ],
    );
  }
}
