import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class NavTextWidget extends StatelessWidget {
   final String text;
  const NavTextWidget({ required this.text,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap:(){},
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,style:TextStyle(fontSize:19,fontWeight:FontWeight.bold),),
            Icon(
              Icons.arrow_back_ios, size:20,color:textColorGrey,),

          ],
        ),
      ),
    );
  }
}
