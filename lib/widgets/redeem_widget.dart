import 'package:flutter/material.dart';
import 'package:untitled2/widgets/points_widget.dart';
import 'package:untitled2/widgets/star_icon.dart';

import '../colors.dart';

class RedeemWidget extends StatefulWidget {
  final String validtill;
  final String imageUrl;
  final String title;
  final String points;
  final String? Redeem_get_text;
  final bool isoffer;
  final int? rating_from_star;

  const RedeemWidget({
    Key? key,
    required this.validtill,
    required this.imageUrl,
    required this.title,
    required this.points,
    this.Redeem_get_text,
    this.isoffer = false,
    this.rating_from_star,
  }) : super(key: key);

  @override
  State<RedeemWidget> createState() => _RedeemWidgetState();
}

class _RedeemWidgetState extends State<RedeemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: CustomColors.backgroundColor,
      child: Stack(
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                widget.imageUrl,
                width: 120,
                height: 120,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  color: CustomColors.backgroundColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      widget.rating_from_star != 0
                          ? Container(
                        height: 10,
                        color: Colors.white,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return StarIcon();
                          },
                          itemCount: widget.rating_from_star ?? 0,
                        ),
                      )
                          : SizedBox(),
                      widget.validtill != "null"
                          ? Text(
                        widget.validtill,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                          : SizedBox(),
                      widget.Redeem_get_text != null
                          ? Text(
                        widget.Redeem_get_text ?? "",
                        style: TextStyle(
                          color: Color.fromARGB(255, 173, 173, 173),
                        ),
                      )
                          : SizedBox(),
                      Container(
                        color: CustomColors.backgroundColor,
                        child: PointsWidget(
                          points: widget.points,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: Ink(
                child: InkWell(
                  onTap: () {},
                  child: Expanded(
                    child: Container(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
