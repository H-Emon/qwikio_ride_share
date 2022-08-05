import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../const/color.dart';

class LocationSearch extends StatefulWidget {
  const LocationSearch({Key? key}) : super(key: key);

  @override
  State<LocationSearch> createState() => _LocationSearchState();
}

class _LocationSearchState extends State<LocationSearch> {
  PageController _controller = PageController(viewportFraction: 1);

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
                  height: 30,
                  child: DefaultTabController(
                      length: 5,
                      child: TabBar(
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.blue[100],
                        ),
                        isScrollable: true,
                        tabs: [
                          Tab(
                            child: Container(
                              height: 25,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14)),
                              child: Center(
                                child: Text(
                                  "ALL",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: textColorGrey),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  "MUSEUMS",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: textColorGrey),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 25,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  "HISTORICAL PLACES",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: textColorGrey),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  "RESTAURENT",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: textColorGrey),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 25,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  "CLUB",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: textColorGrey),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))),
              SizedBox(
                height: 20,
              ),
              Text(
                "Top activities",
                style: TextStyle(
                    color: textColorGrey,
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 280,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      PageView(
                        physics: BouncingScrollPhysics(),
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...List.generate(
                            5,
                            (index) => Container(
                              child: Image.asset(
                                  "assets/images/Rectangle 2.2.png",
                                  fit: BoxFit.cover),
                            ),
                          )
                        ],
                      ),

                      Positioned(
                        top: 35,
                        left: 20,
                        child: Container(
                          height: 25,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.yellow[200],
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.map_outlined,
                                color: Colors.deepOrange[300],
                                size: 18,
                              ),
                              Text(
                                "Central",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange[300]),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 35,
                        right: 20,
                        child: Column(
                          children: [
                            Container(
                              height: 25,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Text(
                                    "4 .1",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.watch_later_outlined,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  Text(
                                    "Closest\n7.35 pm",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 70,
                        left: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Taking a boat tour\nthrough Canals",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SmoothPageIndicator(
                              controller: _controller,
                              count: 7,
                              effect: ExpandingDotsEffect(
                                radius: 3,
                                dotWidth: 6,
                                dotHeight: 6,
                                activeDotColor: Colors.white,
                                spacing: 4,
                                dotColor: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      //Taking a boat tour through Canals
                    ],
                  )),
              Text(
                "Nearby activities",
                style: TextStyle(
                    color: textColorGrey,
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 150,
                          width: 220,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset("assets/images/Rectangle 6.2.png",
                                  width: 250, height: 150, fit: BoxFit.fill),
                              Positioned(
                                top: 15,
                                right: 20,
                                child: Container(
                                  height: 20,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      Text(
                                        "5 .0",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              //Taking a boat tour through Canals
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Biking the city",
                          style: TextStyle(
                              fontSize: 15,
                              color: textColorGrey,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: Colors.green[700],
                              size: 14,
                            ),
                            Text(
                              "12 min",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green[700]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 150,
                          width: 130,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset("assets/images/Rectangle 6.png",
                                  width: 130, height: 150, fit: BoxFit.fill),
                              Positioned(
                                top: 15,
                                right: 20,
                                child: Container(
                                  height: 20,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      Text(
                                        "5 .0",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              //Taking a boat tour through Canals
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "| Amsterdram",
                          style: TextStyle(
                              fontSize: 15,
                              color: textColorGrey,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: Colors.green[700],
                              size: 14,
                            ),
                            Text(
                              "3 min",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green[700]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 280,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      PageView(
                        physics: BouncingScrollPhysics(),
                        controller: _controller,
                        scrollDirection: Axis.vertical,
                        children: [
                          ...List.generate(
                            5,
                            (index) => Container(
                              child: Image.asset(
                                  "assets/images/Rectangle 6.1.png",
                                  fit: BoxFit.cover),
                            ),
                          )
                        ],
                      ),
                      Positioned(
                        top: 10,
                        left: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "More......",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: mainColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      //Taking a boat tour through Canals
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
