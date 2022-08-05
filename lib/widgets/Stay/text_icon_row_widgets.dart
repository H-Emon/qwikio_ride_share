import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/const/color.dart';

class TextIconWidgets extends StatelessWidget {
  final String mainText;
  final String secondText;
  final bool isButtonNeed, isButtonActive;
  const TextIconWidgets(
      {required this.mainText,
      this.secondText = "Select",
      this.isButtonNeed = false,
      this.isButtonActive = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mainText,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          isButtonNeed
              ? Container(
                  height: 35,
                  width: 70,
                  decoration: BoxDecoration(
                      color: isButtonActive ? mainColor : Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Transform.scale(
                      scale: 1.5,
                      child: Switch.adaptive(
                          focusColor: mainColor,
                          activeColor: Colors.white,
                          activeTrackColor: mainColor,
                          inactiveTrackColor: Colors.grey,
                          value: isButtonActive ? true : false,
                          onChanged: (v) {})),
                )
              : Row(
                  children: [
                    Text(
                      secondText,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.arrow_back_ios, size: 25, color: Colors.grey),
                  ],
                ),
        ],
      ),
    );
  }
}
