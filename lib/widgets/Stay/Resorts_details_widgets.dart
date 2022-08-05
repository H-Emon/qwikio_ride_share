import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../const/color.dart';

class ResortsDetailsWidget extends StatelessWidget {
  PageController _controller = PageController();
  final String imgUrl,titleText,amountText;
  ResortsDetailsWidget({
    required this.imgUrl,
    required this.titleText,
    required this.amountText,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 200,
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  children: [
                    ClipRRect(
                      child: Image.asset(
                       imgUrl,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    ClipRRect(
                      child: Image.asset(
                        "assets/images/christopher-jolly-GqbU78bdJFM-unsplash.png",
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    ClipRRect(
                      child: Image.asset(
                       imgUrl,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ],
                  scrollDirection: Axis.horizontal,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: ExpandingDotsEffect(
                            activeDotColor: Colors.white,
                            dotColor: Colors.white,
                            dotWidth: 8,
                            dotHeight: 6,
                            radius: 5,
                            spacing: 20)),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                       titleText,
                        style: TextStyle(
                            fontSize: 24,
                            color: textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.info,
                        color: Colors.grey,
                        size: 25,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.money,
                      color: textColorGrey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Refundable",
                      style: TextStyle(
                          fontSize: 15,
                          color: textColorGrey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.emoji_food_beverage_outlined,
                      color: textColorGrey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Food included",
                      style: TextStyle(
                          fontSize: 15,
                          color: textColorGrey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.wifi,
                      color: textColorGrey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Wi-Fi",
                      style: TextStyle(
                          fontSize: 15,
                          color: textColorGrey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.air,
                      color: textColorGrey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Air Conditioner",
                      style: TextStyle(
                          fontSize: 15,
                          color: textColorGrey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.bathtub,
                      color: textColorGrey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Bath",
                      style: TextStyle(
                          fontSize: 15,
                          color: textColorGrey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                      amountText,
                        style: TextStyle(
                            fontSize: 22,
                            color: textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "2 nights",
                        style: TextStyle(
                            fontSize: 12,
                            color: textColorGrey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 60,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Select",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
