import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class DiscoverPageColumn extends StatelessWidget {
  final String imgUrl,titleText,subText;
  const DiscoverPageColumn({
    required this.imgUrl,
    required this.titleText,
    required this.subText,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ClipRRect(
          borderRadius:BorderRadius.circular(10),
          child:Image.asset(
              imgUrl),),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Text(
                titleText,
                style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                titleText,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize:12,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        )
      ],
    );
  }
}
