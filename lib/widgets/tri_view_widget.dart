import 'package:flutter/material.dart';
import 'package:untitled2/widgets/product_widget.dart';

class TriViewWidget extends StatefulWidget {
  final String title1, title2, title3;
  final String imageUrl1, imageUrl2, imageUrl3;
  final String points1, points2, points3;
  final void Function()? onTap1, onTap2, onTap3;

  const TriViewWidget(
      {Key? key,
      required this.title1,
      required this.title2,
      required this.title3,
      required this.imageUrl1,
      required this.imageUrl2,
      required this.imageUrl3,
      required this.points1,
      required this.points2,
      required this.points3,
      this.onTap1,
      this.onTap2,
      this.onTap3})
      : super(key: key);

  @override
  State<TriViewWidget> createState() => _TriViewWidgetState();
}

class _TriViewWidgetState extends State<TriViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Stack(
            children: [
              Container(
                height: 300,
                child: ProductWidget(
                  imageUrl: widget.imageUrl1,
                  title: widget.title1,
                  points: widget.points1,
                ),
              ),
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: Ink(
                    child: InkWell(
                      onTap: widget.onTap1,
                      child: Expanded(
                        child: Container(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        VerticalDivider(
          width: 1,
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 300,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      ProductWidget(
                        imageHeight: 85,
                        fontSize: 10,
                        title: widget.title2,
                        points: widget.points2,
                        imageUrl: widget.imageUrl2,
                      ),
                      Positioned.fill(
                        child: Material(
                          color: Colors.transparent,
                          child: Ink(
                            child: InkWell(
                              onTap: widget.onTap2,
                              child: Expanded(
                                child: Container(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                ),
                Expanded(
                  child: Stack(
                    children: [
                      ProductWidget(
                        imageHeight: 85,
                        fontSize: 10,
                        imageUrl: widget.imageUrl3,
                        points: widget.points3,
                        title: widget.title3,
                      ),
                      Positioned.fill(
                        child: Material(
                          color: Colors.transparent,
                          child: Ink(
                            child: InkWell(
                              onTap: widget.onTap3,
                              child: Expanded(
                                child: Container(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
