import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../const/color.dart';
import '../../widgets/Stay/Resorts_details_widgets.dart';

class LuxuryResortScreen extends StatefulWidget {
  const LuxuryResortScreen({Key? key}) : super(key: key);

  @override
  State<LuxuryResortScreen> createState() => _LuxuryResortScreenState();
}

class _LuxuryResortScreenState extends State<LuxuryResortScreen> {
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
          "Luxury Resorts",
          style: TextStyle(
              fontSize: 23, color: textColorGrey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ResortsDetailsWidget(
                imgUrl:
                    "assets/images/christopher-jolly-GqbU78bdJFM-unsplash.png",
                titleText: "Beach Luxury Resorts",
                amountText: "\$ 1480",
              ),
              SizedBox(
                height: 30,
              ),
              ResortsDetailsWidget(
                imgUrl:
                    "assets/images/christopher-jolly-GqbU78bdJFM-unsplash (1).png",
                titleText: "Standard King Room",
                amountText: "\$ 1600",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
