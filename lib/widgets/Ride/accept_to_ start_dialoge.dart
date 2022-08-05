import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class AcceptToStartAlertwidgets extends StatelessWidget {
  const AcceptToStartAlertwidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(

      content:Container(
        height:320,
        width:400,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Abdullah wants to help you reach your destination\nAccept the offer to proceed furthe",
              textAlign:TextAlign.center,
              style:TextStyle(
                fontSize:11,
                color:textColorGrey,
              ),),
            CircleAvatar(
              child:Image.asset("assets/images/Ellipse 78.png",width:100,height:100,),
              radius:50,
            ),
            Text(
              "Abdullah Ali",
              textAlign:TextAlign.center,
              style:TextStyle(
                  fontSize:20,
                  color:textColor,
                  fontWeight:FontWeight.bold
              ),),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Estimated Time",
                  textAlign:TextAlign.center,
                  style:TextStyle(
                    fontSize:11,
                    color:textColorGrey,
                  ),),
                Text(
                  "1 hr 35 mis",
                  textAlign:TextAlign.center,
                  style:TextStyle(
                    fontSize:11,
                    color:textColorGrey,
                  ),),
              ],
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height:40,
                  width:80,
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(6),
                      color:Colors.green[300]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Accept",
                      textAlign:TextAlign.center,
                      style:TextStyle(
                          fontSize:15,
                          color:Colors.white,
                          fontWeight:FontWeight.w700
                      ),),
                  ),
                ),
                Container(
                  height:40,
                  width:80,
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(6),
                      color:Colors.red[300]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Decline",
                      textAlign:TextAlign.center,
                      style:TextStyle(
                          fontSize:15,
                          color:Colors.white,
                          fontWeight:FontWeight.w700
                      ),),
                  ),
                ),


              ],
            )

          ],
        ),
      ),
    );
  }
}
