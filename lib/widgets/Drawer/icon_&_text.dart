import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class IconAndText extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconAndText({ required this.text, required this.icon,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size:25,color:textColorGrey,),
        SizedBox(
          width:10,
        ),
        Text(text,style:TextStyle(fontSize:20,fontWeight:FontWeight.bold),)
      ],
    );
  }
}
