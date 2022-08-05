import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class DatePickerAlertSheet extends StatefulWidget {
  const DatePickerAlertSheet({Key? key}) : super(key: key);

  @override
  State<DatePickerAlertSheet> createState() => _DatePickerAlertSheetState();
}

class _DatePickerAlertSheetState extends State<DatePickerAlertSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize:MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Rate your Exprience",
            style: TextStyle(
                fontSize: 20, color: textColor, fontWeight: FontWeight.w600),
          ),
        ),
        Image.asset("assets/images/Ellipse 78.png"),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "Abdullah Ali",
            style: TextStyle(
                fontSize: 20, color: textColor, fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          "Monsurabad,BD",
          style: TextStyle(
              fontSize: 14, color: textColor, fontWeight: FontWeight.w200),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                5,
                    (index) => IconButton(
                  onPressed: () {

                  },
                  icon: Icon(
                    Icons.star_outline,
                    size: 40,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 180,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    child: Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: mainColor, width: 1.5),
                          color: Colors.white),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Mark Driver as Favorite",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: mainColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 5,
                      right: 7,
                      child: CircleAvatar(
                        radius: 9,
                        backgroundColor: mainColor,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 13,
                        ),
                      ))
                ],
              ),
            ),
            Container(
              height: 50,
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6), color: Colors.white),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Need Improvment",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: textColorGrey,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
        Text(
          "Nice Ride",
          style: TextStyle(
              fontSize: 14, color: textColorGrey, fontWeight: FontWeight.w500),
        ),
        Container(
          height: 150,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              TextField(
                onTap: () {},
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Write Commments...",
                  hintStyle: TextStyle(
                    color: textColorGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6), color: Colors.white),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Maybe Later",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: textColorGrey,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6), color:mainColor),

              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Rate",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height:50,
        ),
      ],
    );
  }
}
