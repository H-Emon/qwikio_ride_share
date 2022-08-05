import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../const/color.dart';
import '../../widgets/Google Map/location.dart';

class BookingResortScreen extends StatefulWidget {
  const BookingResortScreen({Key? key}) : super(key: key);

  @override
  State<BookingResortScreen> createState() => _BookingResortScreenState();
}

class _BookingResortScreenState extends State<BookingResortScreen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 380,
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  children: [
                    Image.asset(
                      "assets/images/christopher-jolly-GqbU78bdJFM-unsplash (2).png",
                      height: 350,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/christopher-jolly-GqbU78bdJFM-unsplash (2).png",
                      height: 400,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/christopher-jolly-GqbU78bdJFM-unsplash (2).png",
                      height: 400,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
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
                ),
                Positioned(
                    right: 20,
                    top: 50,
                    child: Icon(
                      Icons.favorite_border,
                      size: 35,
                      color: Colors.white,
                    )),
                Positioned(
                    left: 20,
                    top: 50,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 35,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          SizedBox(
            height:20,
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal:30,vertical:10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Beach Resort Lux",
                      style: TextStyle(
                          fontSize: 24,
                          color: textColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 50,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: mainColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "4.5",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Container(
            height:180,
            padding: EdgeInsets.symmetric(horizontal:10,),
            child:ClipRRect(
                child: GooMapScreen(),
                 borderRadius:BorderRadius.circular(12)) ,
          ),
          SizedBox(
            height:15,
          ),
          Container(
            height:65,
            padding: EdgeInsets.symmetric(horizontal:30,),
            child:Column(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [

                  Icon(
                    Icons.location_pin,
                    color: mainColor,
                    size: 22,
                  ),
                  SizedBox(
                    width:15,
                  ),
                  Text(
                    "Waikiki, HI 123456, Honolulu",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),

                ],
              ),
              Row(
                children: [

                  Icon(
                    Icons.man,
                    color:Colors.red,
                    size: 22,
                  ),
                  SizedBox(
                    width:15,
                  ),
                  Text(
                    "3.2 miles from centre",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),

                ],
              ),
            ],
            ) ,
          ),
          SizedBox(
            height:10,
          ),
          Container(
              height:60,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: mainColor
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Book Resort",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Cost \$1480",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),


        ],
      ),
    );
  }
}
