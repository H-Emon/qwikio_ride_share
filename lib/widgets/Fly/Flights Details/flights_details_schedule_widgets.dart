import 'package:flutter/cupertino.dart';

import '../../../const/color.dart';

class FlightTimeDetailsWidgets extends StatelessWidget {
  final String title,airportShortName,location,imgUrl;
  const FlightTimeDetailsWidgets({
    required this.title,
    required this.airportShortName,
    required this.location,
    required this.imgUrl,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title, style:TextStyle(
            fontSize:15,
            color:textColorGrey,
            fontWeight:FontWeight.bold
        ),),
        Row(
          children: [
            Image.asset(
                imgUrl),
            SizedBox(
              width:7,
            ),
            Text(
              airportShortName, style:TextStyle(
                fontSize:20,
                color:textColor,
                fontWeight:FontWeight.bold
            ),),


          ],
        ),
        Text(
         location, style:TextStyle(
            fontSize:15,
            color:textColorGrey,
            fontWeight:FontWeight.bold
        ),),

      ],
    );
  }
}
