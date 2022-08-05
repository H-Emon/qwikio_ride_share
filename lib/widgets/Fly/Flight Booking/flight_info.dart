import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/color.dart';

class FlightInfoContainer extends StatelessWidget {
  const FlightInfoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 160,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "KHI-JFK",
              style: TextStyle(
                  fontSize: 14,
                  color: textColorGrey,
                  fontWeight: FontWeight.bold),
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
                          color: textColorGrey,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "15h 15m .Direct",
                      style: TextStyle(
                          fontSize: 13,
                          color: textColorGrey,
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
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    Text(
                      "49,55",
                      style: TextStyle(
                          fontSize: 25,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Image.asset("assets/images/Rectangle 18.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Turkis Airlines ",
                  style: TextStyle(
                      fontSize: 14,
                      color: textColorGrey,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
