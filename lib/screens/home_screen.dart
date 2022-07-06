import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:untitled2/screens/search_screen.dart';
import 'package:untitled2/widgets/points_widget.dart';
import 'package:untitled2/widgets/tri_view_widget.dart';

import '../colors.dart';
import '../widgets/delivery_widget.dart';
import '../widgets/number_widget.dart';
import '../widgets/redeem_widget.dart';
import '../widgets/slider_widget.dart';
import '../widgets/users_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var homePagedata = [
    {
      "type": "deliver_address",
      "name": "Siraj",
      "address": "Ahmedabad 380055",
    },
    {
      "type": "horizontal_slider",
      "value": [
        {
          "image_url":
              "https://m.media-amazon.com/images/I/61i8Vjb17SL._SL1500_.jpg",
          "title": "Mobiles",
        },
        {
          "image_url":
              "https://m.media-amazon.com/images/I/71lDPJJ0sZL._UL1500_.jpg",
          "title": "Fashion",
        },
        {
          "image_url":
              "https://media.istockphoto.com/vectors/red-outlined-play-button-vector-id1161124003?k=20&m=1161124003&s=612x612&w=0&h=DueE5_kkVn5JjeyJXRtW03ZO54LcYlBvqbC3vl1SJoQ=",
          "title": "Prime",
        },
        {
          "image_url":
              "https://m.media-amazon.com/images/I/61i8Vjb17SL._SL1500_.jpg",
          "title": "Fresh",
        },
        {
          "image_url":
              "https://m.media-amazon.com/images/I/61i8Vjb17SL._SL1500_.jpg",
          "title": "miniTv",
        },
        {
          "image_url":
              "https://m.media-amazon.com/images/I/61kWB+uzR2L._SL1500_.jpg",
          "title": "Electronics",
        },
        {
          "image_url":
              "https://m.media-amazon.com/images/I/61FZhS8Oc4L._SL1100_.jpg",
          "title": "Home",
        },
        {
          "image_url":
              "https://m.media-amazon.com/images/I/61McHnZ1BcL._SL1500_.jpg",
          "title": "Appliances",
        },
        {
          "image_url":
              "https://images-na.ssl-images-amazon.com/images/I/813uPMOnskL.jpg",
          "title": "Books,Toys",
        },
        {
          "image_url":
              "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Medicine_Drugs.svg/2560px-Medicine_Drugs.svg.png",
          "title": "Pharmacy",
        },
        {
          "image_url":
              "https://m.media-amazon.com/images/I/51vG3VxanCL._SL1000_.jpg",
          "title": "Essentials",
        },
      ],
    },
    {
      "images": [
        "http://zenzzen.co/files/home_slider_images/3e3a7624-6659-4993-92d3-07922ef1c890.jpg",
        "http://zenzzen.co/files/home_slider_images/8ed05834-a02c-497a-81fe-9ee7cc41e660.jpg",
        "http://zenzzen.co/files/home_slider_images/47b7022f-396d-4e9b-9e2e-c8220ce76bb1.jpg"
      ],
      "profile": {
        "account_status": "KYC_PENDING",
        "first_name": "tester",
        "id": "62a74ef1-b84b-478d-85c8-7625597ec295",
        "last_name": "three",
        "mobile": "3333333333",
        "profile_image": "http://zenzzen.co/files/defaults/user-default.png"
      },
      "type": "banner_images",
      "walletData": {
        "available_points": 0,
        "total_installations": 0,
        "total_points_earned": 0,
        "total_points_redeemed": 0
      }
    },
    {"type": "size_box", "value": "10"},
    {"type": "label", "value": "New redeems are here"},
    {"type": "size_box", "value": "10"},
    {
      "type": "redeems_vertical_view",
      "value": [
        {
          "id": "4a38e5a2-2bcd-4ca0-9157-e5cfe8803408",
          "points": 16000,
          "ratings_from_5": 0,
          "start_at": null,
          "title":
              "Mi 80 cm (32 inches) HD Ready Android Smart LED TV 4A PRO | L32M5-AL (Black)",
          "url":
              "http://zenzzen.co/files/redeems/99a57b19-d6bd-4846-aa90-2bc5433f601f.jpg",
          "valid_till": null
        },
        {
          "id": "0d9e6fa5-99ce-49fe-81ce-7954fe71faef",
          "points": 9000,
          "ratings_from_5": 0,
          "start_at": null,
          "title":
              "Preethi Zodiac MG-218 mixer grinder, 750 watt, Black/Light Grey, 5 jars - 3 In 1 insta fresh juicer Jar & Master chef food processor Jar, Vega W5 motor with 5yr Warranty & Lifelong Free Service",
          "url":
              "http://zenzzen.co/files/redeems/a85a56cb-f3fe-4557-81ba-58252769edc9.jpg",
          "valid_till": null
        },
        {
          "id": "9d307eb4-e1bc-4416-a7f1-ad8952b21fd4",
          "points": 8999,
          "ratings_from_5": 0,
          "start_at": null,
          "title":
              "realme narzo 50i (Mint Green, 4GB RAM+64GB Storage) - 6.5\" inch Large Display | 5000mAh Battery",
          "url":
              "http://zenzzen.co/files/redeems/b73b99f9-becb-4c34-b970-e869b90610ac.jpg",
          "valid_till": null
        }
      ]
    },
    {
      "type": "tri_view_redeems",
      "value": [
        {
          "id": "700965d7-9bc8-4bb0-b14c-92921024bfee",
          "points": 3599,
          "ratings_from_5": 0,
          "start_at": null,
          "title":
              "JBL Tune 510BT, On Ear Wireless Headphones with Mic, up to 40 Hours Playtime, JBL Pure Bass, Quick Charging, Dual Pairing, Bluetooth 5.0 & Voice Assistant Support for Mobile Phones (Blue)",
          "url":
              "http://zenzzen.co/files/redeems/823030a0-cc4c-487f-8a6f-04aa1a986892.jpg",
          "valid_till": null
        },
        {
          "id": "66c4af14-34c6-40f4-b877-e521510d45a3",
          "points": 55000,
          "ratings_from_5": 0,
          "start_at": null,
          "title": "Apple iPhone 12 (64GB) - Black",
          "url":
              "http://zenzzen.co/files/redeems/f7490c49-0af1-42c8-977e-644d32041fb1.jpg",
          "valid_till": null
        },
        {
          "id": "2e07a877-2706-4fa1-b63f-ecbbc666ab3a",
          "points": 7200,
          "ratings_from_5": 0,
          "start_at": null,
          "title":
              "Philips HD6975/00 25 Litre Digital Oven Toaster Grill, Grey, 25 liter",
          "url":
              "http://zenzzen.co/files/redeems/6a6f6ac3-dc19-4251-8488-8e6962a466d8.jpg",
          "valid_till": null
        }
      ]
    },
    {
      "image_url":
          "http://zenzzen.co/files/single_banner_images/bd0c8c5f-113d-4a12-9d42-725c91959f07.png",
      "type": "single_banner_ad"
    },
    {"type": "size_box", "value": "10"},
    {"type": "label", "value": "New Offers"},
    {"type": "size_box", "value": "10"},
    {
      "type": "tri_view_offers",
      "value": [
        {
          "category": "light holder",
          "end_date": null,
          "id": "0bdfef23-c75c-4a9e-aaba-0779f7d68e3d",
          "max_scans": 200,
          "points": 14,
          "start_date": null,
          "title":
              "Improvhome Vintage Type Traditional Surface Mounted Wall Light Lamp Scone for Outdoor,Indoor Decorative, 40 Watts (Bulb Not Included) (Pack of 1), Black",
          "url":
              "http://zenzzen.co/files/offers/1e507286-f74a-4f34-a7b4-2c451b7dc88a.jpg"
        },
        {
          "category": "bulb holder",
          "end_date": null,
          "id": "172349f9-cd08-4ae4-b09d-94e5f325aa52",
          "max_scans": 500,
          "points": 14,
          "start_date": null,
          "title":
              "Multy Rays Decorative, Rope Wall Double Holder Lamp Wooden Base, Urban Retro Style, Antique Wood, E27 Holder with Filament Bulb (Pack of 1)",
          "url":
              "http://zenzzen.co/files/offers/60da4dc0-cec8-43d2-b090-1ac317d17b2c.jpg"
        },
        {
          "category": "light holder",
          "end_date": null,
          "id": "3755d475-2b34-4226-9fc8-d58611ca7038",
          "max_scans": "",
          "points": 5,
          "start_date": null,
          "title":
              "Prop It Up SQUARE White Fancy DESIGNER Bulb holder for wall home Plastic Light Socket (B-22), Brass Light Socket, 4 INCH, JUNCTION & CONSEALED BOX FULL COVER BY HOLDER (PACK OF 4)",
          "url":
              "http://zenzzen.co/files/offers/6c755d44-57b1-4a7a-863c-2fab726e5c70.jpg"
        }
      ]
    },
    {
      "type": "offers_vertical_view",
      "value": [
        {
          "category": "switch",
          "end_date": null,
          "id": "c783b613-b014-4375-8b38-6d436220acf3",
          "max_scans": "",
          "points": 10,
          "start_date": "06 Jul",
          "title":
              "Smart Touch Switch 4 Gang, Wi-Fi Enabled, No Additional Hubs, No Automation related Wiring, Compatible with Amazon Alexa and Google Assistant, Add shortcuts to Siri (Black)",
          "url":
              "http://zenzzen.co/files/offers/7e45df3c-0c1a-4a8e-b777-211983132615.jpg"
        },
        {
          "category": "Modular Plate",
          "end_date": null,
          "id": "6f1743e6-e473-4091-9515-4692ce9ef358",
          "max_scans": 5000,
          "points": 10,
          "start_date": "04 Jul",
          "title":
              "Modular Plate with Blue LED Indicator, NAT. Wood - Single|12 Module Switch Plates|Cover Plate|12M Polycarbonate Switch Frame",
          "url":
              "http://zenzzen.co/files/offers/0ef82793-db3f-48c0-909d-67f1c6ddbba3.jpg"
        },
        {
          "category": "Lan Switch",
          "end_date": "30 Jun",
          "id": "73eaefa5-914d-431b-84cb-99fe99bd7155",
          "max_scans": 10,
          "points": 10,
          "start_date": null,
          "title":
              "Panama Rj45 Double Port Network Ethernet Lan Wall Outlet Plate Socket Panel",
          "url":
              "http://zenzzen.co/files/offers/ae710b18-d26c-4888-9d83-6f2fdfb92a64.jpg"
        },
        {
          "category": "switch",
          "end_date": "23 Jul",
          "id": "de7548b5-aab6-4eef-8ca2-8f1f8fd07f23",
          "max_scans": "",
          "points": 20,
          "start_date": null,
          "title":
              "Smart Touch Switch 1 Gang 24A, Wi-Fi Enabled, No Additional Hubs, No Automation related Wiring, Compatible with Amazon Alexa and Google Assistant, Add shortcuts to Siri",
          "url":
              "http://zenzzen.co/files/offers/6a246ec7-6781-4b62-8491-fcfeaa1df5da.jpg"
        }
      ]
    },
    {"type": "size_box", "value": "10"},
    {"type": "label", "value": "Smart watch"},
    {"type": "size_box", "value": "10"},
    {
      "type": "tri_view_redeems",
      "value": [
        {
          "id": "d615e6a5-1202-4b53-870a-1f34a429f272",
          "points": 3499,
          "ratings_from_5": 0,
          "start_at": null,
          "title":
              "Amazfit Bip 3 Smart Watch with 1.69\" Large Color Display,2 Weeks' Battery Life,5 ATM Water-Resistance,60 Sports Modes and Blood-Oxygen Saturation Measurement (Blue)",
          "url":
              "http://zenzzen.co/files/redeems/2988972f-bcf7-444b-b1a7-82fcf985eab0.jpg",
          "valid_till": null
        },
        {
          "id": "492fb137-d963-4589-baf3-aa1f5f601a1a",
          "points": 2300,
          "ratings_from_5": 0,
          "start_at": null,
          "title":
              "Fire-Boltt Rage Full Touch 1.28” Display & 60 Sports Modes with IP68 Rating Smartwatch, Sp02 Tracking, Over 100 Cloud Based Watch Faces",
          "url":
              "http://zenzzen.co/files/redeems/90c2fee7-a488-4095-b621-c3022a91d1c1.jpg",
          "valid_till": null
        },
        {
          "id": "a3104244-3faa-4623-a394-21ee57e19e5c",
          "points": 1799,
          "ratings_from_5": 0,
          "start_at": null,
          "title":
              "Noise ColorFit Pulse Grand Smart Watch with 1.69\" HD Display, 60 Sports Modes, 150 Watch Faces, Fast Charge, Spo2 Monitoring Smartwatch for Men & Women (Jet Black)",
          "url":
              "http://zenzzen.co/files/redeems/8df5c3dd-8ef1-4dc6-984c-9ca4febd40ab.jpg",
          "valid_till": null
        }
      ]
    },
    {"type": "size_box", "value": "10"},
    {"type": "label", "value": "All time best"},
    {"type": "size_box", "value": "10"},
    {
      "type": "redeems_vertical_view",
      "value": [
        {
          "id": "513c863d-7fb9-4b36-9254-a7d28a815a02",
          "points": 3999,
          "ratings_from_5": 0,
          "start_at": null,
          "title":
              "Cosmus Everest 60 Ltrs Rucksack Travel Backpack Bag for Trekking Hiking Bag with Shoe Compartment",
          "url":
              "http://zenzzen.co/files/redeems/bf9f4542-2b80-49f4-a3fb-0b6c7cf74a65.jpg",
          "valid_till": null
        },
        {
          "id": "4a38e5a2-2bcd-4ca0-9157-e5cfe8803408",
          "points": 16000,
          "ratings_from_5": 0,
          "start_at": null,
          "title":
              "Mi 80 cm (32 inches) HD Ready Android Smart LED TV 4A PRO | L32M5-AL (Black)",
          "url":
              "http://zenzzen.co/files/redeems/99a57b19-d6bd-4846-aa90-2bc5433f601f.jpg",
          "valid_till": null
        },
        {
          "id": "e490c026-88c6-433b-8e69-47f3133f490d",
          "points": 2700,
          "ratings_from_5": 0,
          "start_at": null,
          "title":
              "Sony Wh-Ch510 Bluetooth Wireless On Ear Headphones Without Mic Up-To 35Hrs Playtime Lightweight, Type-C, Play/Pause Control, 30Mm Driver, Bt Version 5.0 & Voice Assistant Support For Mobiles - Blue",
          "url":
              "http://zenzzen.co/files/redeems/ac44edfe-5857-4d07-b2c6-7212b885b9ad.jpg",
          "valid_till": null
        },
        {
          "id": "0d9e6fa5-99ce-49fe-81ce-7954fe71faef",
          "points": 9000,
          "ratings_from_5": 0,
          "start_at": null,
          "title":
              "Preethi Zodiac MG-218 mixer grinder, 750 watt, Black/Light Grey, 5 jars - 3 In 1 insta fresh juicer Jar & Master chef food processor Jar, Vega W5 motor with 5yr Warranty & Lifelong Free Service",
          "url":
              "http://zenzzen.co/files/redeems/a85a56cb-f3fe-4557-81ba-58252769edc9.jpg",
          "valid_till": null
        },
        {
          "id": "504eb3c4-e93d-494a-908c-290c86e62218",
          "points": 70000,
          "ratings_from_5": 0,
          "start_at": null,
          "title":
              "Nikon Z50 Compact Mirrorless Digital Camera with Flip Under Selfie/Vlogger LCD, Body",
          "url":
              "http://zenzzen.co/files/redeems/13574f57-a047-4d8d-96ba-410815e600bf.jpg",
          "valid_till": null
        }
      ]
    }
  ];

  var imagesData;
  var profileData;
  var walletData;
  var redeems_vertical_viewData;
  var tri_view_redeemsData;
  var tri_view_offersData;
  var offers_vertical_viewData;
  var horizontal_sliderData;

  void initState() {
    super.initState();
    horizontal_sliderData = homePagedata[1]['value'] as List;
    imagesData = homePagedata[2]['images'] as List;
    profileData = homePagedata[2]['profile'] as Map<dynamic, dynamic>;
    walletData = homePagedata[2]['walletData'] as Map<dynamic, dynamic>;
    redeems_vertical_viewData = homePagedata[6]["value"] as List;
    tri_view_redeemsData = homePagedata[7]["value"] as List;
    tri_view_offersData = homePagedata[12]["value"] as List;
    offers_vertical_viewData = homePagedata[13]["value"] as List;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: CustomColors.primaryColor,
            title: Container(
              height: 35,
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 244, 247, 252),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => SearchScreen(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      IconButton(
                        splashRadius: 12,
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Search Offers",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          CupertinoButton(
                            minSize: double.minPositive,
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            child: Icon(
                              Icons.notifications,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          Positioned(
                            right: 3,
                            top: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.white),
                              ),
                              constraints: BoxConstraints(
                                minWidth: 5,
                                minHeight: 5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CupertinoButton(
                        // minSize: double.minPositive,
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        child: Icon(
                          Icons.qr_code_scanner,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: homePagedata.length,
              itemBuilder: (context, index) {
                if (homePagedata[index]["type"] == "horizontal_slider") {
                  return Container(
                    height: 80,
                    color: CustomColors.backgroundColor,
                    padding: EdgeInsets.only(top: 8),
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: horizontal_sliderData.length,
                      itemBuilder: (context, ind) {
                        return SliderWidget(
                          title: horizontal_sliderData[ind]['title'],
                          imageUrl: horizontal_sliderData[ind]['image_url'],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                    ),
                  );
                }
                if (homePagedata[index]["type"] == "deliver_address") {
                  return DeliveryWidget(
                    name: homePagedata[index]['name'].toString(),
                    address: homePagedata[index]['address'].toString(),
                  );
                }

                if (homePagedata[index]["type"] == "banner_images") {
                  return Column(
                    children: [
                      Container(
                        height: 220,
                        width: double.infinity,
                        child: Swiper(
                          scrollDirection: Axis.horizontal,
                          index: 0,
                          autoplay: true,
                          itemCount: imagesData.length,
                          itemBuilder: (BuildContext context, ind) {
                            return Image.network(
                              imagesData[ind].toString(),
                              fit: BoxFit.fill,
                            );
                          },
                        ),
                      ),
                      //wallet data
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NumberWidget(
                              mainTitle:
                                  walletData["available_points"].toString(),
                              subTitle: 'Available Points',
                            ),
                            NumberWidget(
                              mainTitle:
                                  walletData["total_installations"].toString(),
                              subTitle: 'Total Installations',
                            ),
                            NumberWidget(
                              mainTitle:
                                  walletData["total_points_earned"].toString(),
                              subTitle: 'Total Points Earned',
                            ),
                            NumberWidget(
                              mainTitle: walletData["total_points_redeemed"]
                                  .toString(),
                              subTitle: 'Total Points Redeemed',
                            ),
                          ],
                        ),
                      ),
                      //profile data
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                        child: UserDetails(
                          onTap: () {},
                          imageUrl: profileData["profile_image"].toString(),
                          phoneNo: profileData["mobile"].toString(),
                          name:
                              "${profileData["first_name"]} ${profileData["last_name"]}",
                          isEditable: true,
                          isVerified: true,
                        ),
                      ),
                    ],
                  );
                }
                if (homePagedata[index]["type"] == "size_box") {
                  return SizedBox(
                    height:
                        double.parse(homePagedata[index]["value"].toString()),
                  );
                }
                if (homePagedata[index]["type"] == "label") {
                  return Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      homePagedata[index]["value"].toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  );
                }
                if (homePagedata[index]["type"] == "single_banner_ad") {
                  return Flexible(
                    // width: double.infinity,
                    child: Image.network(
                      homePagedata[index]["image_url"].toString(),
                      fit: BoxFit.fill,
                    ),
                  );
                }
                if (homePagedata[index]["type"] == "redeems_vertical_view") {
                  return Column(
                    children: [
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: redeems_vertical_viewData.length,
                        itemBuilder: (context, ind) {
                          return RedeemWidget(
                            title: redeems_vertical_viewData[ind]['title'],
                            rating_from_star: redeems_vertical_viewData[ind]
                                ['ratings_from_5'],
                            validtill: redeems_vertical_viewData[ind]
                                    ['valid_till']
                                .toString(),
                            imageUrl: redeems_vertical_viewData[ind]['url']
                                .toString(),
                            points: redeems_vertical_viewData[ind]['points']
                                .toString(),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider(
                            height: 1,
                          );
                        },
                      ),
                      Divider(
                        height: 1,
                      ),
                    ],
                  );
                }
                if (homePagedata[index]["type"] == "tri_view_offers") {
                  return TriViewWidget(
                    onTap1: () {},
                    onTap2: () {},
                    onTap3: () {},
                    title1: tri_view_offersData[0]['title'].toString(),
                    title2: tri_view_offersData[1]['title'].toString(),
                    title3: tri_view_offersData[2]['title'].toString(),
                    imageUrl1: tri_view_offersData[0]['url'].toString(),
                    imageUrl2: tri_view_offersData[1]['url'].toString(),
                    imageUrl3: tri_view_offersData[2]['url'].toString(),
                    points1: tri_view_offersData[0]['points'].toString(),
                    points2: tri_view_offersData[1]['points'].toString(),
                    points3: tri_view_offersData[2]['points'].toString(),
                  );
                }
                if (homePagedata[index]["type"] == "offers_vertical_view") {
                  return Container(
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: offers_vertical_viewData.length,
                      itemBuilder: (context, ind) {
                        return RedeemWidget(
                          title: offers_vertical_viewData[ind]['title'],
                          validtill: offers_vertical_viewData[ind]
                                      ['end_date'] ==
                                  null
                              ? "Start From ${offers_vertical_viewData[ind]['start_date']}"
                              : "Redeem valid till ${offers_vertical_viewData[ind]['end_date']}",
                          imageUrl:
                              offers_vertical_viewData[ind]['url'].toString(),
                          points: offers_vertical_viewData[ind]['points']
                              .toString(),
                          Redeem_get_text: offers_vertical_viewData[ind]
                                  ['category']
                              .toString(),
                        );
                      },
                      separatorBuilder: (BuildContext context, int ind) {
                        return Divider(
                          height: 1,
                        );
                      },
                    ),
                  );
                }
                if (homePagedata[index]["type"] == "tri_view_redeems") {
                  return TriViewWidget(
                    onTap1: () {},
                    onTap2: () {},
                    onTap3: () {},
                    title1: tri_view_redeemsData[0]['title'].toString(),
                    title2: tri_view_redeemsData[1]['title'].toString(),
                    title3: tri_view_redeemsData[2]['title'].toString(),
                    imageUrl1: tri_view_redeemsData[0]['url'].toString(),
                    imageUrl2: tri_view_redeemsData[1]['url'].toString(),
                    imageUrl3: tri_view_redeemsData[2]['url'].toString(),
                    points1: tri_view_redeemsData[0]['points'].toString(),
                    points2: tri_view_redeemsData[1]['points'].toString(),
                    points3: tri_view_redeemsData[2]['points'].toString(),
                  );
                }
                return Container();
              },
            ),
          ),
        ),
      ),
    );
  }
}
