import 'package:flutter/material.dart';

class OrWidget extends StatefulWidget {
  const OrWidget({Key? key}) : super(key: key);

  @override
  State<OrWidget> createState() => _OrWidgetState();
}

class _OrWidgetState extends State<OrWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 2,
              color: Colors.grey.shade200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Text("OR"),
          ),
          Expanded(
            child: Container(
              height: 2,
              color: Colors.grey.shade200,
            ),
          ),
        ],
      ),
    );
  }
}
