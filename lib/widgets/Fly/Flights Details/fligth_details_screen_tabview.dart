import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/widgets/Fly/Flights%20Details/selected_Date.dart';

import '../../../const/color.dart';
import 'flights_details_schedule_widgets.dart';

class FligthTabViewwidgets extends StatelessWidget {
  const FligthTabViewwidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 180,
          width: 400,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: mainColor, width: 2)),
                      child: Container(
                        margin: EdgeInsets.all(2),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(5),
                            color: mainColor),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 2,
                      color: mainColor,
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(22.5),
                          color: Colors.blue[200]),
                      child: Container(
                        height: 20,
                        width: 20,
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(15),
                            color: mainColor),
                        child: Image.asset(
                            "assets/images/Path 3.png"),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 2,
                      color: mainColor,
                    ),
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: mainColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlightTimeDetailsWidgets(
                        imgUrl: "assets/images/Vector (7).png",
                        title: "Departure Form",
                        airportShortName: "DHK",
                        location: "Dhaka,Bangladesh",
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      color: textColorGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlightTimeDetailsWidgets(
                        imgUrl: "assets/images/Vector (8).png",
                        title: "Arrival At",
                        airportShortName: "DXB",
                        location: "Dubai,UAE",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "personal Details",
                  style: TextStyle(
                      fontSize: 15,
                      color: textColorGrey,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 35,
                        width: 180,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Full Name",
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: textColorGrey,
                                    width: 2)),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                                fontSize: 13,
                                color: textColorGrey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: textColorGrey,
                                    width: 2)),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                                fontSize: 13,
                                color: textColorGrey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  "Departure Date",
                  style: TextStyle(
                      fontSize: 15,
                      color: textColorGrey,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40,
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 16,
                        color: textColorGrey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Mon,10 Feb",
                        style: TextStyle(
                            fontSize: 12,
                            color: textColorGrey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Passengers",
                  style: TextStyle(
                      fontSize: 13,
                      color: textColorGrey,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40,
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 18,
                        color: textColorGrey,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        width: 250,
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Adult",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: textColorGrey,
                                      fontWeight:
                                      FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Container(
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(
                                          9),
                                      color:
                                      Colors.deepPurple[700]),
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Children",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: textColorGrey,
                                      fontWeight:
                                      FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Container(
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(9),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        color: textColorGrey,
                                        fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Infants",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: textColorGrey,
                                      fontWeight:
                                      FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Container(
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(9),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        color: textColorGrey,
                                        fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Class",
                  style: TextStyle(
                      fontSize: 13,
                      color: textColorGrey,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: mainColor,
                        ),
                        child: Text(
                          "Economy",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.center,
                      ),
                      Container(
                        height: 45,
                        width: 100,
                        child: Text(
                          "Business",
                          style: TextStyle(
                              fontSize: 13,
                              color: textColorGrey,
                              fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.center,
                      ),
                      Container(
                        height: 45,
                        width: 100,
                        child: Text(
                          "First Class",
                          style: TextStyle(
                              fontSize: 13,
                              color: textColorGrey,
                              fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
               isScrollControlled:true,
                context: (context),
                builder: (context)=>DateSelectBottomSheetWidget()
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 15.0, vertical: 12),
            child: Text(
              "Confirm Details",
              style: TextStyle(
                  color: mainColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.white, elevation: 10),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
