import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class CongrsAlertWidgets extends StatelessWidget {
  const CongrsAlertWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding:EdgeInsets.zero,
      content:Container(
        height:320,
        width:500,
        color:Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/Celebration-Icon-Graphics-14289670-1-580x386.jpg",width:300,height:200,),
            Text(
              "Congratualations",
              textAlign:TextAlign.center,
              style:TextStyle(
                fontSize:35,
                color:mainColor,
                fontWeight:FontWeight.bold
              ),),
            Text(
              "You reached your destination",
              textAlign:TextAlign.center,
              style:TextStyle(
                  fontSize:12,
                  color:mainColor,
                  fontWeight:FontWeight.w200
              ),),


          ],
        ),
      ),
    );
  }
}
