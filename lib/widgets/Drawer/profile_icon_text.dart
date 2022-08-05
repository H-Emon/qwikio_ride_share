import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class IconTextWidget extends StatelessWidget {

  final IconData icon;
  final String text1;
  final String text2;

  const IconTextWidget({
    required this.icon,
    required this.text1,
    required this.text2,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,size:35,color:textColorGrey,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: Text(
                 text1,style:TextStyle(
                    fontSize:20,color:textColorGrey,fontWeight:FontWeight.bold),),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: Text(
             text2,style:TextStyle(
                fontSize:20,color:textColor,fontWeight:FontWeight.bold),),
          ),

        ],
      ),
    );
  }
}
