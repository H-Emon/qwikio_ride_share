import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/const/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarSuvDetailsScreen extends StatefulWidget {
  const CarSuvDetailsScreen({Key? key}) : super(key: key);

  @override
  State<CarSuvDetailsScreen> createState() => _CarSuvDetailsScreenState();
}

class _CarSuvDetailsScreenState extends State<CarSuvDetailsScreen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 540,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/Rectangle 359.png",
                  width: 700,
                  height: 540,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 60,
                  child: Container(
                    height: 40,
                    width: 400,
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Text(
                          "Santa Fe SEL",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 140,
                    left: 100,
                    child: Image.asset("assets/images/240.png")),
                Align(
                  alignment: Alignment.center,
                  child: PageView(
                    controller: _controller,
                    children: [
                      Image.asset(
                        "assets/images/mahindra-kuv100-pearl-white 1.png",
                      ),
                      Image.asset(
                        "assets/images/mahindra-kuv100-pearl-white 1 (1).png",
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 140,
                    right: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Milies",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue[300],
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Per Hour",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )),
                Positioned(
                  bottom: 140,
                  right: 120,
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.white,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Waikiki 113 St. Honolulu",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 120,
                    right: 190,
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 2,
                      effect: ExpandingDotsEffect(
                          activeDotColor: Colors.lightBlueAccent,
                          dotHeight: 3,
                          dotWidth: 8,
                          dotColor: Colors.white),
                    )),
                Positioned(
                  bottom: 10,
                  child: Container(
                    height: 60,
                    width: 420,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.map,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "5 mins away",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.local_car_wash,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Trunk",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.view_compact,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "2020 Hyundai",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "6s",
                      style: TextStyle(
                          fontSize: 40,
                          color: textColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "0-60 mph",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "150 mph",
                      style: TextStyle(
                          fontSize: 40,
                          color: textColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Top Speed",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 90,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Text(
              "Hyundai All-Wheel Drive has two independent motors. "
              "Unlike traditional all-wheel drive systems, "
              "these two motors digitally control torque to "
              "the front and rear wheels—for far better"
              " handling and traction control. ",
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "\$300/day",
                  style: TextStyle(
                      fontSize: 28,
                      color: textColorGrey,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: mainColor),
                  child: Center(
                    child: Text(
                      "Rent",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
