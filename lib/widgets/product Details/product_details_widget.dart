import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:untitled2/padding-custom.dart';
import 'package:untitled2/widgets/product%20Details/pagination_widget.dart';

import '../../colors.dart';

class ProductDetailsWidget extends StatefulWidget {
  const ProductDetailsWidget({Key? key}) : super(key: key);

  @override
  State<ProductDetailsWidget> createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget> {
  var productData = {
    "title":
        "Crucial BX500 240GB 3D NAND SATA 6.35 cm (2.5-inch) SSD (CT240BX500SSD1)",
    "images": [
      {
        "url": "https://m.media-amazon.com/images/I/51LbXCEndSL._SL1005_.jpg",
        "type": "image",
      },
      {
        "url": "https://m.media-amazon.com/images/I/5190S9p1ckL._SL1280_.jpg",
        "type": "video",
      },
      {
        "url": "https://m.media-amazon.com/images/I/61MOAo9OF2L._SL1158_.jpg",
        "type": "image",
      },
      {
        "url": "https://m.media-amazon.com/images/I/81ssKc1VoHS._SL1500_.jpg",
        "type": "image",
      },
      {
        "url": "https://m.media-amazon.com/images/I/51Fpm0Pz2cS._SL1280_.jpg",
        "type": "image",
      },
      {
        "url": "https://m.media-amazon.com/images/I/51LbXCEndSL._SL1005_.jpg",
        "type": "video",
      },
    ],
  };
  var imagesData = [];

  void initState() {
    super.initState();
    imagesData = productData['images'] as List;
  }

  SwiperController controller = SwiperController();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: CPadding.padding_horizontal,
          ),
          child: Text(
            productData['title'].toString(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Stack(
          children: [
            Container(
              height: 300,
              child: Swiper(
                controller: controller,
                onIndexChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                scrollDirection: Axis.horizontal,
                itemCount: imagesData.length,
                itemBuilder: (context, index) {
                  if (imagesData[index]["type"] == "image") {
                    return Image.network(
                      imagesData[index]["url"].toString(),
                      fit: BoxFit.contain,
                    );
                  }

                  if (imagesData[index]['type'] == "video") {
                    return Stack(
                      children: [
                        Positioned.fill(
                          child: Image.network(
                            imagesData[index]['url'].toString(),
                            fit: BoxFit.contain,
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(60),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                  return Container();
                },
              ),
            ),
            Positioned(
              left: 10,
              top: 5,
              child: CircleAvatar(
                backgroundColor: CustomColors.primaryColor,
                child: Center(
                  child: Text(
                    "36% off",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Center(
                  child: GestureDetector(
                    child: Icon(
                      Icons.favorite,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 5,
              child: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.5),
                child: Center(
                  child: GestureDetector(
                    child: Icon(
                      Icons.share_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 40),
          // color: Colors.red,
          height: 40,
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: imagesData.length,
            itemBuilder: (context, index) {
              return PaginationWidget(
                radius: 4,
                isVideo: imagesData[index]['type'] != "image",
                indexValue: index,
                selectedIndex: selectedIndex,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 5,
              );
            },
          ),
        ),
      ],
    );
  }
}
