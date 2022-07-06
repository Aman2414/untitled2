import 'package:flutter/material.dart';
import 'package:untitled2/widgets/custom_text_field.dart';

import '../colors.dart';
import '../widgets/search_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isNotEmpty = false;

  var searchData = [
    {
      "name":
          "Modular Plate with BLUE LED Indicator, NAT Wood Single 12 Module",
      "category": "Electronics",
    },
    {
      "name":
          "Prop It Up Square White Fancy DESIGNER Bulb Holder for wall home Plastic",
      "category": "Electronics",
    },
    {
      "name":
          "Prop It Up Square White Fancy DESIGNER Bulb Holder for wall home Plastic",
      "category": "Electronics",
    },
    {
      "name":
          "Prop It Up Square White Fancy DESIGNER Bulb Holder for wall home Plastic",
      "category": "Electronics",
    },
    {
      "name":
          "Prop It Up Square White Fancy DESIGNER Bulb Holder for wall home Plastic",
      "category": "Electronics",
    },
    {
      "name":
          "Prop It Up Square White Fancy DESIGNER Bulb Holder for wall home Plastic",
      "category": "Electronics",
    },
    {
      "name":
          "Prop It Up Square White Fancy DESIGNER Bulb Holder for wall home Plastic",
      "category": "Electronics",
    },
    {
      "name":
          "Prop It Up Square White Fancy DESIGNER Bulb Holder for wall home Plastic",
      "category": "Electronics",
    },
    {
      "name":
          "Prop It Up Square White Fancy DESIGNER Bulb Holder for wall home Plastic",
      "category": "Electronics",
    },
    {
      "name":
          "Prop It Up Square White Fancy DESIGNER Bulb Holder for wall home Plastic",
      "category": "Electronics",
    },
    {
      "name":
          "Prop It Up Square White Fancy DESIGNER Bulb Holder for wall home Plastic",
      "category": "Electronics",
    },
    {
      "name":
          "Prop It Up Square White Fancy DESIGNER Bulb Holder for wall home Plastic",
      "category": "Electronics",
    },
    {
      "name":
          "Prop It Up Square White Fancy DESIGNER Bulb Holder for wall home Plastic",
      "category": "Electronics",
    },
  ];

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
            backgroundColor: CustomColors.backgroundColor,
            body: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 1),
                        blurRadius: 5,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Material(
                    color: CustomColors.backgroundColor,
                    child: Row(
                      children: [
                        IconButton(
                          splashRadius: 12,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: CustomColors.primaryColor,
                            size: 20,
                          ),
                        ),
                        Expanded(
                            child: TextField(
                          autofocus: true,
                          onChanged: (val) {
                            setState(() {
                              isNotEmpty = val.isNotEmpty;
                            });
                          },
                          controller: searchController,
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            suffixIcon: isNotEmpty
                                ? GestureDetector(
                                    onTap: () {
                                      searchController.clear();
                                      setState(() {
                                        isNotEmpty = false;
                                      });
                                    },
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.grey,
                                    ),
                                  )
                                : SizedBox(),
                          ),
                        )),
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: GestureDetector(
                            child: Icon(
                              Icons.mic_none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Expanded(
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 0),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: searchData.length,
                      itemBuilder: (context, index) {
                        return SearchWidget(
                          onTap: () {},
                          name: searchData[index]['name'].toString(),
                          category: searchData[index]['category'].toString(),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
