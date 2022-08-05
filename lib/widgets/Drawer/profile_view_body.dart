import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/widgets/Drawer/profile_icon_text.dart';

import '../../const/color.dart';

class ProfileViewBodywidget extends StatelessWidget {
   final String formText, membertext,totalRideText,exprienceText,buttonText;
   final bool isEditPage ;
  const ProfileViewBodywidget({
    required this.formText,
    required this.membertext,
    required this.exprienceText,
    required this.totalRideText,
    required this.buttonText,
    required this.isEditPage,
    Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius:80,
          child:Image.asset("assets/images/Ellipse 9.png"),
        ),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(
              height:15,
              width: 15,
              decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(7.5),
                  color:Colors.lightGreen),
            ),
            Text(
              "Abdullah Ali",style:TextStyle(fontSize:25,color:textColor,fontWeight:FontWeight.bold),),
            IconButton(
                onPressed:(){},
                icon: Icon(Icons.edit,color:textColorGrey,size:20,))

          ],
        ),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            ...List.generate(5, (index) => Icon(Icons.star,color:Colors.yellow,)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Text(
                "5/5",style:TextStyle(
                  fontSize:18,color:textColorGrey,fontWeight:FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Text(
                "(47 reviews)",style:TextStyle(
                  fontSize:15,color:textColorGrey,fontWeight:FontWeight.bold),),
            ),


          ],
        ),
        SizedBox(
          height:50,
        ),
        IconTextWidget(
            icon:Icons.location_pin,
            text1: "From",
            text2:formText),
        IconTextWidget(
            icon:Icons.person_outline,
            text1: "Member since",
            text2:membertext),
        IconTextWidget(
            icon:Icons.directions_car_rounded,
            text1: "Total Rides",
            text2:totalRideText),
        IconTextWidget(
            icon:Icons.poll,
            text1: "Total Exprience",
            text2:exprienceText),
        SizedBox(
          height:50,
        ),
        Container(
          height:50,
          width:200,
          decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(12),
              border:Border.all(color:mainColor,width:1.5),
             color: isEditPage? mainColor:Colors.white,
          ),
          child:Center(
            child: Text(
              buttonText,
              style:TextStyle(
                  fontSize:20,
                  fontWeight:FontWeight.bold,
                  color: isEditPage ? Colors.white: mainColor,
              ),
            ),
          ),
        ),




      ],
    );
  }
}
