import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/widgets/Drawer/profile_view_body.dart';

import '../../const/color.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar:AppBar(
        leading:Icon(Icons.arrow_back, size:30,color:textColorGrey,),
        elevation:0,
        backgroundColor:Colors.white,
        title:Text("Profile",style:TextStyle(fontSize:25, color:textColorGrey,fontWeight:FontWeight.bold),),
        centerTitle:true,
      ) ,
      body:ProfileViewBodywidget(
        exprienceText:"3.5 Yrs",
        formText:"United Kingdom",
        membertext: "Jan.2021",
        totalRideText:"(52)",
        isEditPage:true,
        buttonText:"Update Profile",

      ),
    ));
  }
}
