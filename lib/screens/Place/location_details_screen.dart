import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../const/color.dart';
import '../../widgets/Google Map/location.dart';

class LocationDetailsScreen extends StatefulWidget {
  const LocationDetailsScreen({Key? key}) : super(key: key);

  @override
  State<LocationDetailsScreen> createState() => _LocationDetailsScreenState();
}

class _LocationDetailsScreenState extends State<LocationDetailsScreen> {
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
          "Cycling Club",
          style: TextStyle(
              fontSize: 23, color: textColorGrey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 380,
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/images/location-one-picture (5).png",
                              width: double.maxFinite,
                              fit: BoxFit.fitWidth,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            )
                          ],
                        )),
                    Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 30.0, left: 15, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "switzerland",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.brown[300]),
                                      ),
                                      Text(
                                        "Cycling Club",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: textColor),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\$",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: textColorGrey),
                                      ),
                                      Text(
                                        "72/hr",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: textColorGrey),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  "One of the best clubs in town. We have produced top international atheletes. One of the best clubs in town. We have produced top international atheletes.One of the best clubs in town. We have produced top international atheletes.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                padding:EdgeInsets.symmetric(horizontal:20),
                height:40,
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:60,
                      width: 80,
                      child:Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.star,color:Colors.deepOrange,size:20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rating",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                              Text(
                                "4.8(3.2k)",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.brown[300]),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height:60,
                      width: 120,
                      child:Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.send,color:mainColor,size:20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Distance",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                              Text(
                                "34 km from here",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.brown[300]),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height:10,
              ),
              Container(
                height:130,
                child:GooMapScreen(),
              ),
              SizedBox(
                height:15,
              ),
              Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: buttonColor,

              ),
              child: ElevatedButton(
                onPressed:(){},
                child: Text(
                  "Book A Ride",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold
                  ),),
              )
          ),
              Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),),
                  child: ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      primary:Colors.white
                    ),
                    onPressed:(){},
                    child: Text(
                      "Find Directions",
                      style: TextStyle(
                        color:mainColor,
                          fontSize: 20,
                          fontWeight:FontWeight.w400
                      ),),
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
