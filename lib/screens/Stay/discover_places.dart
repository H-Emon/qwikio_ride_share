import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';
import '../../widgets/Stay/Discover_Page_clipr.dart';
import '../../widgets/place/search_suggestion_container.dart';

class DiscoverPlaces extends StatelessWidget {
  const DiscoverPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          size: 30,
          color: textColorGrey,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Stay",
          style: TextStyle(
              fontSize: 23, color: textColorGrey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 22,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Search Your Location",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: Center(
                        child: Text(
                          "Dates",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: Center(
                        child: Text(
                          "Guests",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: Center(
                        child: Text(
                          "Filters",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "What can we help you\nfind, Abdullah?",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DiscoverPageColumn(
                      imgUrl: "assets/images/cooking-picture.png",
                      titleText: "Resorts",
                      subText: "250+ Resorts",
                    ),
                    DiscoverPageColumn(
                      imgUrl: "assets/images/location-one-picture (7).png",
                      titleText: "Houses",
                      subText: "200+ Houses",
                    ),
                    DiscoverPageColumn(
                      imgUrl: "assets/images/cooking-picture (1).png",
                      titleText: "Appartments",
                      subText: "20+ appartments",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Featured",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: textColorGrey),
              ),
              SizedBox(
                height: 10,
              ),
              SuggestionContainer(
                imgUrl: "assets/images/location-one-picture (8).png",
                subText: "Luxury Resort",
                amountText: "720",
              ),
              SizedBox(
                height: 10,
              ),
              SuggestionContainer(
                imgUrl: "assets/images/location-one-picture (9).png",
                subText: "House Lux",
                amountText: "720",
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        elevation: 0,
        selectedItemColor:mainColor,

        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.home_filled,color:textColorGrey,size:30,),
            label:".",

          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.favorite_border,color:textColorGrey,size:30,),
            label:".",

          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.calendar_today,color:textColorGrey,size:30,),

            label:".",

          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.chat_outlined,color:textColorGrey,size:30,),

            label:".",

          ),

        ],
      ),
    );
  }
}
