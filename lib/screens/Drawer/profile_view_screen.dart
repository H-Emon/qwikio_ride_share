import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/const/color.dart';
import 'package:qwikio_ride_share/widgets/Drawer/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:Icon(Icons.arrow_back, size:30,color:textColorGrey,),
        elevation:0,
        backgroundColor:Colors.white,
        title:Text("Profile",style:TextStyle(fontSize:25, color:textColorGrey,fontWeight:FontWeight.bold),),
        centerTitle:true,
      ),
      body:ProfileViewBodywidget(
          formText: "United Kingdom",
          membertext: "Feb,2019",
          exprienceText: "5.5 Yrs",
          totalRideText: "165",
          buttonText:"Edit Profile",
          isEditPage: false)



    );
  }
}
