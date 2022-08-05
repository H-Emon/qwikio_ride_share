import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../const/color.dart';
import 'Payment/payment_method_container/add_card_container.dart';
import 'Payment/payment_method_container/paynow_conatainer.dart';
import 'Payment/payment_method_container/trip_duration.dart';


class PaymentConfirmWidget extends StatelessWidget {
  const PaymentConfirmWidget({Key? key}) : super(key: key);

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
          "Payment Methods",
          style: TextStyle(
              fontSize: 23, color: textColorGrey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            AddCard(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              //color: mainColor,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/mastercard.png",
                  width: 40,
                  height: 40,
                ),
                title: Text(
                  "My Virtual Debit Card",
                  style: TextStyle(
                      fontSize: 14,
                      color: textColorGrey,
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "* * * 8553",
                  style: TextStyle(
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w600),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 25,
                  color: mainColor,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            TripDurationContainer(
              dayCountText: "6 day trip",
              durationText: "Renting from April 3 to April 9",
            ),
            PaynowContainer(),
          ],
        ),
      ),
    );
  }
}
