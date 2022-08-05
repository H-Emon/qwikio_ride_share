import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/color.dart';
import '../../../widgets/Fly/Flight Booking/Schedule_container.dart';
import '../../../widgets/Fly/Flight Booking/flight_info.dart';

class FlightBooking extends StatelessWidget {
  const FlightBooking({Key? key}) : super(key: key);

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
          "Flight Booking",
          style: TextStyle(
              fontSize: 23, color: textColorGrey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: textColorGrey, width: 1.5),
                borderRadius: BorderRadius.circular(14)),
            child: Row(
              children: [
                ScheduleContainer(
                  dateText: "22 Feb",
                  amountText: "\$4,516",
                ),
                ScheduleContainer(
                  dateText: "23 Feb",
                  amountText: "\$1114",
                ),
                ScheduleContainer(
                  dateText: "24 Feb",
                  amountText: "\$5516",
                ),
                ScheduleContainer(
                  dateText: "25 Feb",
                  amountText: "\$2516",
                ),
                Container(
                  height: 80,
                  width: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Colors.grey,
                  ),
                  child: Icon(
                    Icons.calendar_today,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 160,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: mainColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "KHI-JFK",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue[800],
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "CHEAPEST",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.yellow[700],
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "23:45 - 4:30",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "15h 15m .Direct",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "\$",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                          ),
                          Text(
                            "45,16",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/Rectangle 18 (1).png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "United Airlines UA 802",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          FlightInfoContainer(),
          FlightInfoContainer(),
          Container(
              height:50,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: buttonColor,
              ),
              child: ElevatedButton(
                onPressed: () {
                  //this for reuseble
                },
                child: Text(
                  "Book Flight",
                  style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
