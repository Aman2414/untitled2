import 'package:flutter/material.dart';

import '../colors.dart';

class SearchWidget extends StatefulWidget {
  final String name, category;
  final void Function()? onTap;

  const SearchWidget(
      {Key? key, required this.name, required this.category, this.onTap})
      : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: CustomColors.backgroundColor,
      child: Ink(
        height: 50,
        child: InkWell(
          onTap: widget.onTap,
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Flexible(
                child: Text(
                  widget.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                widget.category,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
