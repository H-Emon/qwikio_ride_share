import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/color.dart';
import 'Payment/payment_method_container/paynow_conatainer.dart';
import 'Payment/payment_method_container/trip_duration.dart';





class PaymentDetailsWidget extends StatelessWidget {
  const PaymentDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height:10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 15),
              child: Container(
                height: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Card Holder's Name",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Abdullah Ali",
                      style: TextStyle(
                          fontSize: 15,
                          color: textColorGrey,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Card Number",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "5470 0004 0033 0002",
                          style: TextStyle(
                              fontSize: 15,
                              color: textColorGrey,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    Image.asset(
                      "assets/images/mastercar.jpg",
                      height: 25,
                      width: 40,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 30,
              //color: mainColor,
              child: Text(
                "Expire Date",
                style: TextStyle(
                    fontSize: 15,
                    color: textColorGrey,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Container(
                height: 40,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Month",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "12",
                          style: TextStyle(
                              fontSize: 15,
                              color: textColorGrey,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Year",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "25",
                          style: TextStyle(
                              fontSize: 15,
                              color: textColorGrey,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal:10.0,
              ),
              child: Container(
                height: 40,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Security code",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "574",
                          style: TextStyle(
                              fontSize: 15,
                              color: textColorGrey,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Icon(
                      Icons.add_alert,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 30,
                //color: mainColor,
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: mainColor, width: 2),
                      ),
                      child: Container(
                        color: mainColor,
                        margin: EdgeInsets.all(1.5),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Remember my card for next purchases.",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )),
            SizedBox(
              height:40,
            ),
            TripDurationContainer(
              dayCountText:"5 day trip" ,
              durationText: "Round trip from Feb 10 to Feb 15" ,
            ),
            PaynowContainer(),

          ],
        ));


  }
}
