import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../const/color.dart';
import 'Payment/payment_methods_container.dart';

class PaymentMethodsWidget extends StatelessWidget {
  const PaymentMethodsWidget({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          AccountContainer(
              imgUrl: "assets/images/qwikoi pay.png", acName: "Qwikio pay"),
          AccountContainer(
              imgUrl: "assets/images/bank ac.png", acName: "Bank Account"),
          AccountContainer(
              imgUrl: "assets/images/visa-512.webp",
              acName: "Credit/Debit Card"),
          AccountContainer(
              imgUrl: "assets/images/paypal.png", acName: "Paypal"),
          AccountContainer(
              imgUrl: "assets/images/paynioor.jpg", acName: "Payoneer"),
        ],
      ),
    );
  }
}
