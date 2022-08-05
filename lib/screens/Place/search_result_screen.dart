import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/widgets/place/search_suggestion_container.dart';

import '../../const/color.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

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
          "Place",
          style: TextStyle(
              fontSize: 23, color: textColorGrey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                      "Sports",
                      style: TextStyle(
                          color: textColorGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Nearby places",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: textColorGrey),
              ),
              SizedBox(
                height: 10,
              ),
              SuggestionContainer(
                  imgUrl: "assets/images/location-one-picture.png",
                  subText: "Gym"),
              SizedBox(
                height: 10,
              ),
              SuggestionContainer(
                  imgUrl: "assets/images/location-one-picture (1).png",
                  subText: "Cycling Club"),
              SizedBox(
                height: 10,
              ),
              SuggestionContainer(
                  imgUrl: "assets/images/location-one-picture (2).png",
                  subText: "Basketball Court"),
              SizedBox(
                height: 40,
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
                  imgUrl: "assets/images/location-one-picture (3).png",
                  subText: "Archery Club"),
              SizedBox(
                height: 10,
              ),
              SuggestionContainer(
                  imgUrl: "assets/images/location-one-picture (4).png",
                  subText: "Baseball Ground"),
              SizedBox(
                height: 10,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
