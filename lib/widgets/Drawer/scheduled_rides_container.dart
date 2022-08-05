import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class ScheduledContainer extends StatelessWidget {
  final String typeText,timeText, dateText,carNameText;
  final bool isToday ;
  const ScheduledContainer({
    required this.typeText,
    required this.timeText,
    required this.dateText,
    required this.carNameText,
    required this.isToday,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      height:140,
      width:350,
      decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(8),
          color: isToday ? mainColor : Colors.white,
      ),
      child:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Text(
              typeText, style:TextStyle(
              fontSize:15,
              color: isToday ?Colors.white:textColorGrey,

            ),),
            SizedBox(
              height:7,
            ),
            Text(
             timeText, style:TextStyle(
                fontSize:25,
                color:isToday ?Colors.white:textColorGrey,
                fontWeight:FontWeight.bold
            ),),
            SizedBox(
              height:5,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dateText, style:TextStyle(
                  fontSize:15,
                 color: isToday ?Colors.white:textColorGrey,

                ),),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/car-xxl.png",
                      height:30,
                      width:50,
                      color:isToday ?Colors.white:textColorGrey,
                    ),
                    Text(
                      carNameText, style:TextStyle(
                      fontSize:15,
                      color:isToday ?Colors.white:textColorGrey,

                    ),),

                  ],
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
