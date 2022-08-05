import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class StaffTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  const StaffTextField({
    required this.labelText,
    required this.hintText,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height:75,
      width:double.infinity,
      margin:EdgeInsets.symmetric(horizontal:35),

      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Text( labelText,
            style:TextStyle(
                color:textColorGrey ,
                fontSize:20 ,
                fontWeight:FontWeight.w600),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              onTap:(){},
              decoration:InputDecoration(
                border:InputBorder.none,
                hintText:hintText,
                hintStyle:TextStyle(
                  color:textColorGrey,
                ),
              ),),
          ),
        ],
      ),
    );
  }
}
