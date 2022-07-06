import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled2/widgets/button_with_text.dart';
import 'package:untitled2/widgets/custom_text_field.dart';
import 'package:untitled2/widgets/product%20Details/product_details_widget.dart';
import 'package:untitled2/widgets/star_icon.dart';

import '../colors.dart';
import '../padding-custom.dart';
import '../style_settings.dart';
import '../widgets/ad_banner_widget.dart';
import '../widgets/amazon_fulfilled.dart';
import '../widgets/delivery_widget.dart';
import '../widgets/icon_with_text_widget.dart';
import '../widgets/item_widget.dart';
import '../widgets/two_text_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>
    with SingleTickerProviderStateMixin {
  bool isDown = false, isboxshadow = false;
  bool isSelected = false;
  int selectedIndex = 0, sheetSelectedIndex = 0;
  late AnimationController animationController;
  String dropdownvalue = "1";
  Color color = Colors.white;
  Color? color1, color2, color3, color4;

  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
      upperBound: 0.5,
    );
    loadquantityData();
  }

  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  var capacityData = [
    {
      "capacity": "240GB",
      "price": "2,250.00",
      "stock": "In stock.",
      "quantity": "30",
    },
    {
      "capacity": "1TB",
      "price": "8,199.00",
      "stock": "In stock.",
      "quantity": "20",
    },
    {
      "capacity": "2TB",
      "price": "14,530.00",
      "stock": "In stock.",
      "quantity": "10",
    },
    {
      "capacity": "480GB",
      "price": "3,288.00",
      "stock": "In stock.",
      "quantity": "30",
    },
  ];

  var offersData = [
    {
      "title1": "Buy more Save more and get more",
      "title2":
          "Get 20.00 back fro every eligible item purchased from the sellerr and etec all from everything",
      "title3": "See More",
    },
    {
      "title1": "No Cost EMI",
      "title2":
          "Avail No Cost EMI on select cards for orders above 300.00 and so also etc everything hello world how are you",
      "title3": "1 offer",
    },
    {
      "title1": "Cashback",
      "title2":
          "Get Rewards up to 2200 on card approval + 5% back on this product with Amazon Pay ICICI Bank credit card for Prime membership and Amazon PAy membership",
      "title3": "3 offers",
    },
    {
      "title1": "Bank offer",
      "title2":
          "Get Rewards up to 2200 on card approval + 5% back on this product with Amazon Pay ICICI Bank credit card for Prime membership and Amazon PAy membership",
      "title3": "3 offers",
    },
  ];

  var items = [];
  var i = 0;

  List loadquantityData() {
    int quantity =
        int.parse(capacityData[selectedIndex]['quantity'].toString());

    for (; i < quantity; i++) {
      String s = "${i + 1}";
      print("I value: $i");
      items.add(s);
    }

    return items;
  }

  openQuantitySheet() {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Barrier",
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (_, __, ___) {
        return StatefulBuilder(
          builder: (context, StateSetter setModalState) {
            return Center(
              child: Material(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              topLeft: Radius.circular(5),
                            )),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Qty:",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: StyleSettings.fontSize,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                          itemCount: items.length,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return Material(
                              color: sheetSelectedIndex == index
                                  ? CustomColors.primaryColor.withOpacity(0.1)
                                  : Colors.white,
                              child: Ink(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      sheetSelectedIndex = index;
                                    });
                                    setModalState(() {
                                      sheetSelectedIndex = index;
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 8),
                                    child: Text(
                                      items[index],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 1,
                              color: Colors.grey.shade200,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: CustomColors.backgroundColor,
          body: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: CustomColors.primaryColor,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 10),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            filled: true,
                            fillColor: CustomColors.backgroundColor,
                            hintText: "Search Amazon.in",
                            prefixIcon: Icon(
                              Icons.search,
                              color: CustomColors.iconColor,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.qr_code,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: GestureDetector(
                        child: Icon(
                          Icons.mic_none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DeliveryWidget(
                        name: "Siraj",
                        address: "Ahmedabad 380055",
                      ),
                      AdBannerWidget(
                        title:
                            "XPG A-DATA 512 GB M.2 2280 Express_Card Solid State Drive with 1000 MBPS Speed",
                        price: "5,099.00",
                        imageUrl:
                            "https://www.adata.com/_nuxt/img/ADATA_logo.0665129.png",
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Sponsored",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: StyleSettings.fontSize,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: CPadding.padding_horizontal,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Visit the Crucial Store",
                                style: TextStyle(
                                  color: CustomColors.primaryColor
                                      .withOpacity(0.6),
                                  fontSize: StyleSettings.fontSize,
                                ),
                              ),
                            ),
                            StarIcon(),
                            StarIcon(),
                            StarIcon(),
                            StarIcon(),
                            StarIcon(
                              isHalf: true,
                              isFilled: false,
                            ),
                            Text(
                              "72,323",
                              style: TextStyle(
                                fontSize: StyleSettings.fontSize,
                                color:
                                    CustomColors.primaryColor.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ProductDetailsWidget(),
                      Container(
                        height: 5,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        height: isDown ? 200 : 115,
                        color: CustomColors.backgroundColor,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: CPadding.padding_horizontal,
                                ),
                                Text(
                                  "Style name: ",
                                ),
                                Text(
                                  "BX 2.5inch SSD",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 1,
                              color: Colors.grey.shade200,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isDown = !isDown;
                                  !isDown
                                      ? animationController.reverse(from: 1.0)
                                      : animationController.forward(from: 0.0);
                                });
                              },
                              child: Container(
                                height: isDown ? 40 : 60,
                                color: CustomColors.backgroundColor,
                                // color: Colors.blue,
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                  right: 10,
                                ),
                                child: Row(
                                  crossAxisAlignment: isDown
                                      ? CrossAxisAlignment.start
                                      : CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: isDown
                                          ? Row(
                                              children: [
                                                Text(
                                                  "Capacity:",
                                                ),
                                                Text(
                                                  "240GB",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        StyleSettings.fontSize,
                                                  ),
                                                ),
                                              ],
                                            )
                                          : Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Capacity:",
                                                ),
                                                Text(
                                                  "240GB",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                    ),
                                    RotationTransition(
                                      turns: Tween(begin: 0.0, end: 1.0)
                                          .animate(animationController),
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            isDown
                                ? Container(
                                    margin: EdgeInsets.only(top: 8),
                                    padding: EdgeInsets.symmetric(vertical: 2),
                                    // color: Colors.yellow,
                                    height: 90,
                                    child: ListView.separated(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      itemCount: capacityData.length,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedIndex = index;
                                              loadquantityData();
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                              border: Border.all(
                                                color: selectedIndex == index
                                                    ? Color(0xffac884e)
                                                    : Colors.grey.shade400,
                                              ),
                                            ),
                                            width: 120,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color:
                                                        selectedIndex == index
                                                            ? Color(0xfffcf8f7)
                                                            : Color(0xfffafafa),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(3),
                                                      topRight:
                                                          Radius.circular(3),
                                                    ),
                                                  ),
                                                  height: 30,
                                                  padding: EdgeInsets.only(
                                                      top: 5, left: 10),
                                                  width: double.infinity,
                                                  child: Text(
                                                    capacityData[index]
                                                            ['capacity']
                                                        .toString(),
                                                    style: TextStyle(
                                                      fontSize: StyleSettings
                                                          .fontSize,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 2,
                                                  color: Colors.grey.shade200,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      top: 5, left: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "₹ ${capacityData[index]['price']}",
                                                      ),
                                                      Text(
                                                        capacityData[index]
                                                                ['stock']
                                                            .toString(),
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xff1e881d),
                                                          fontSize:
                                                              StyleSettings
                                                                  .fontSize,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          width: 10,
                                        );
                                      },
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                      Container(
                        height: 5,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "-36%",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 35,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "₹",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Text(
                                  "2,250",
                                  style: TextStyle(
                                    fontSize: 35,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: Text(
                                    "00",
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "M.R.P.:",
                                ),
                                Text(
                                  "₹3,500.00",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: StyleSettings.fontSize,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            AmazonFulfilled(),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Inclusive of all taxes",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: StyleSettings.fontSize,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Get 10% cashback up to ₹50",
                                    style: TextStyle(
                                      color: CustomColors.primaryColor
                                          .withOpacity(0.6),
                                      fontSize: StyleSettings.fontSize,
                                    ),
                                  ),
                                  Text(
                                    "Pay with Amazon Pay UPI. T&C apply.",
                                    style: TextStyle(
                                      color: CustomColors.primaryColor,
                                      fontSize: StyleSettings.fontSize,
                                    ),
                                  ),
                                  Text(
                                    "Link your bank account now",
                                    style: TextStyle(
                                      fontSize: StyleSettings.fontSize,
                                      color: CustomColors.primaryColor
                                          .withOpacity(0.6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 5,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        height: 170,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: ShapeDecoration(
                                    shape: PolygonBorder(
                                      sides: 13,
                                      side: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "%",
                                      style: TextStyle(
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Offers",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: StyleSettings.fontSize,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 120,
                              padding: EdgeInsets.symmetric(vertical: 2),
                              child: ListView.separated(
                                shrinkWrap: true,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: CustomColors.backgroundColor,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                    width: 130,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          offersData[index]['title1']
                                              .toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: StyleSettings.fontSize,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          offersData[index]['title2']
                                              .toString(),
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: StyleSettings.fontSize,
                                          ),
                                        ),
                                        GestureDetector(
                                          child: Text(
                                            "${offersData[index]['title3']} >",
                                            style: TextStyle(
                                              color: CustomColors.primaryColor,
                                              fontSize: StyleSettings.fontSize,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return Container(
                                    width: 10,
                                  );
                                },
                                itemCount: offersData.length,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 5,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "FREE delivery",
                                  style: TextStyle(
                                    color: CustomColors.primaryColor,
                                    fontSize: StyleSettings.fontSize,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Thursday, 7 July.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: StyleSettings.fontSize,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Details",
                                  style: TextStyle(
                                    color: CustomColors.primaryColor,
                                    fontSize: StyleSettings.fontSize,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Or fastest delivery",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: StyleSettings.fontSize,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " Today 9 PM - 12 AM. ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: StyleSettings.fontSize,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Order within",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: StyleSettings.fontSize,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " 1 hr 30 mins.",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: StyleSettings.fontSize,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " Details",
                                      style: TextStyle(
                                        color: CustomColors.primaryColor,
                                        fontSize: StyleSettings.fontSize,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      size: 20,
                                    ),
                                  ),
                                  Text(
                                    "Select delivery location",
                                    style: TextStyle(
                                      color: CustomColors.primaryColor,
                                      fontSize: StyleSettings.fontSize,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Available at a lower price from ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: StyleSettings.fontSize,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "other sellers ",
                                      style: TextStyle(
                                        color: CustomColors.primaryColor,
                                        fontSize: StyleSettings.fontSize,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "that may not offer free Prime shipping.",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: StyleSettings.fontSize,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              capacityData[selectedIndex]['stock'].toString(),
                              style: TextStyle(
                                color: Color(0xff1e881d),
                                fontSize: StyleSettings.fontSize,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  isboxshadow
                                      ? BoxShadow(
                                          color: CustomColors.primaryColor,
                                          spreadRadius: 2,
                                          blurRadius: 2,
                                        )
                                      : BoxShadow(color: Colors.white),
                                ],
                              ),
                              child: GestureDetector(
                                onLongPress: () {
                                  setState(() {
                                    isboxshadow = true;
                                  });
                                },
                                onLongPressCancel: () {
                                  setState(() {
                                    isboxshadow = false;
                                  });
                                },
                                child: Material(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      border: Border.all(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        openQuantitySheet();
                                      },
                                      child: Container(
                                        width: 90,
                                        padding: EdgeInsets.all(5),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "Qty: ${items[sheetSelectedIndex]}",
                                              ),
                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_down,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ButtonWithText(
                              bgColor: Color(
                                0xfffed813,
                              ),
                              title: "Add to Cart",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ButtonWithText(
                              bgColor: Color(
                                0xffffa51d,
                              ),
                              title: "Buy Now",
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.lock_fill,
                                  color: Colors.grey,
                                  size: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  child: Text(
                                    "Secure transaction",
                                    style: TextStyle(
                                      color: CustomColors.primaryColor,
                                      fontSize: StyleSettings.fontSize,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Sold by",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: StyleSettings.fontSize,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Appario Retail Private Ltd ",
                                    style: TextStyle(
                                      color: CustomColors.primaryColor,
                                      fontSize: StyleSettings.fontSize,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "and",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: StyleSettings.fontSize,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Fulfilled by Amazon.",
                                    style: TextStyle(
                                      color: CustomColors.primaryColor,
                                      fontSize: StyleSettings.fontSize,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Gift-wrap available.",
                              style: TextStyle(
                                fontSize: StyleSettings.fontSize,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "ADD TO WISH LIST",
                                style: TextStyle(
                                  color: CustomColors.primaryColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 5,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Other sellers on Amazon",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: StyleSettings.largefontSize,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Compare New (13) from",
                                        style: TextStyle(
                                          fontSize: StyleSettings.fontSize,
                                        ),
                                      ),
                                      Text(
                                        "₹ 2,250.00",
                                        style: TextStyle(
                                          fontSize: StyleSettings.fontSize,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          AmazonFulfilled(),
                                          Text(
                                            "FREE Delivery",
                                            style: TextStyle(
                                              fontSize:
                                                  StyleSettings.smallfontSize,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 5,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: IconWithTextWidget(
                                textColor: color1,
                                onLongPress: () {
                                  setState(() {
                                    color1 = Colors.red;
                                  });
                                },
                                onLongPressCancel: () {
                                  setState(() {
                                    color1 = null;
                                  });
                                },
                                title: "7 Days Replacement",
                                iconData: FontAwesomeIcons.truckFast,
                              ),
                            ),
                            Expanded(
                              child: IconWithTextWidget(
                                textColor: color2,
                                onLongPress: () {
                                  setState(() {
                                    color2 = Colors.red;
                                  });
                                },
                                onLongPressCancel: () {
                                  setState(() {
                                    color2 = null;
                                  });
                                },
                                title: "Amazon Delivered",
                                iconData: FontAwesomeIcons.truckFast,
                              ),
                            ),
                            Expanded(
                              child: IconWithTextWidget(
                                textColor: color3,
                                onLongPress: () {
                                  setState(() {
                                    color3 = Colors.red;
                                  });
                                },
                                onLongPressCancel: () {
                                  setState(() {
                                    color3 = null;
                                  });
                                },
                                title: "3 Year Warranty",
                                iconData: FontAwesomeIcons.truckFast,
                              ),
                            ),
                            Expanded(
                              child: IconWithTextWidget(
                                textColor: color4,
                                onLongPress: () {
                                  setState(() {
                                    color4 = Colors.red;
                                  });
                                },
                                onLongPressCancel: () {
                                  setState(() {
                                    color4 = null;
                                  });
                                },
                                title: "No-Contact Delivery",
                                iconData: FontAwesomeIcons.truckFast,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 5,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "SELL ON AMAZON",
                          style: TextStyle(
                            color: CustomColors.primaryColor,
                          ),
                        ),
                      ),
                      Container(
                        height: 5,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Product details",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: StyleSettings.largefontSize,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TwoTextWidget(
                                  title1: "Digital Storage Capacity",
                                  title2: "240GB",
                                ),
                                TwoTextWidget(
                                  title1: "Compatible Devices",
                                  title2: "Laptop, Desktop",
                                ),
                                TwoTextWidget(
                                  title1: "Hard Disk Interface",
                                  title2: "Unknown",
                                ),
                                TwoTextWidget(
                                  title1: "Brand",
                                  title2: "Crucial",
                                ),
                                TwoTextWidget(
                                  title1: "Model Name",
                                  title2: "BX500",
                                ),
                                TwoTextWidget(
                                  title1: "Specific Uses For Product",
                                  title2: "Business Gaming",
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 5,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        color: Colors.white,
                        child: AdBannerWidget(
                          padding: EdgeInsets.only(left: 10),
                          bgColor: Colors.white,
                          imageSize: 50,
                          gapSize: 30,
                          title:
                              "XPG A-DATA 512 GB M.2 2280 Express_Card Solid State Drive with 1000 MBPS Speed",
                          price: "5,099.00",
                          imageUrl:
                              "https://www.adata.com/_nuxt/img/ADATA_logo.0665129.png",
                        ),
                      ),
                      Container(
                        height: 5,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Buy it with",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: StyleSettings.largefontSize,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(),
                                      ),
                                      Image.network(
                                        "https://m.media-amazon.com/images/I/51LbXCEndSL._SL1005_.jpg",
                                        height: 100,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "+",
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.network(
                                        "https://m.media-amazon.com/images/I/51LbXCEndSL._SL1005_.jpg",
                                        height: 100,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "+",
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.network(
                                        "https://m.media-amazon.com/images/I/51LbXCEndSL._SL1005_.jpg",
                                        height: 100,
                                      ),
                                      Expanded(
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 2,
                                    color: Colors.grey,
                                  ),
                                  ItemWidget(
                                    title1:
                                        "Crucial BX500 240GB 3D NAND SATA 6.35 cm",
                                    title2: "240GB",
                                    price: "2,250.00",
                                  ),
                                  ItemWidget(
                                    title1:
                                        "Crucial BX500 240GB 3D NAND SATA 6.35 cm",
                                    title2: "240GB",
                                    price: "2,250.00",
                                  ),
                                  ItemWidget(
                                    title1:
                                        "Crucial BX500 240GB 3D NAND SATA 6.35 cm",
                                    title2: "240GB",
                                    price: "2,250.00",
                                  ),
                                ],
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
          ),
        ),
      ),
    );
  }
}
