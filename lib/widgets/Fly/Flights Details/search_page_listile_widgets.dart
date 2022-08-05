
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/color.dart';

class SearchPageListTile extends StatelessWidget {
  final String labelText,titleText,subTitleText,tailingText;
  final bool isSecondTile;
  const SearchPageListTile({

    required this.labelText,
    required this.titleText,
    required this.subTitleText,
    required this.tailingText,
    required this.isSecondTile,

    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:28.0,vertical:10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         isSecondTile? Container(): Text(
           labelText,style:TextStyle(
              fontSize:13,
              color:Colors.grey,
              fontWeight:FontWeight.bold
          ),),
          ListTile(
            title:Text(
            titleText,style:TextStyle(
                fontSize:15,
                color:textColor,
                fontWeight:FontWeight.bold
            ),) ,
            subtitle:Text(
             subTitleText,style:TextStyle(
                fontSize:13,
                color:Colors.grey,
                fontWeight:FontWeight.bold
            ),),
            trailing:Text(tailingText,style:TextStyle(
                fontSize:15,
                fontWeight:FontWeight.w700,color:mainColor
            ),),
          ),




        ],
      ),
    );
  }
}
