import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../const/color.dart';

class TripDurationContainer extends StatelessWidget {
  final String dayCountText,durationText;
  const TripDurationContainer({
    required this.dayCountText,
    required this.durationText,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      //color: mainColor,
      child: Row(
        children: [
          Text(
           dayCountText,
            style: TextStyle(
                fontSize: 14,
                color: textColorGrey,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 80,
          ),
          Container(
            color: Colors.yellow[100],
            child: Text(
             durationText,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
