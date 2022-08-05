import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/widgets/Drawer/scheduled_rides_container.dart';

import '../../const/color.dart';

class ScheduledRides extends StatelessWidget {
  const ScheduledRides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:Icon(
          Icons.close, size:30,color:textColorGrey,),
        elevation:0,
        backgroundColor:Colors.white,
        title:Text(
          "Scheduled Rides",style:TextStyle(fontSize:25, color:textColorGrey,fontWeight:FontWeight.bold),),
        centerTitle:true,

      ) ,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:30.0),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              SizedBox(
                height:10,
              ),
              Text(
                "11 FeB", style:TextStyle(
                fontSize:16,
                color:textColorGrey,
                fontWeight:FontWeight.bold
              ),),
              SizedBox(
                height:10,
              ),
              Text(
                "Today", style:TextStyle(
                  fontSize:13,
                  color:textColorGrey,
                  fontWeight:FontWeight.bold
              ),),
              SizedBox(
                height:10,
              ),
              ScheduledContainer(
                typeText:"Upcomind ride",
                carNameText:"qwikio",
                dateText:"10 Feb",
                isToday:true,
                timeText:"03:30 PM",
              ),
              SizedBox(
                height:20,
              ),
              ScheduledContainer(
                typeText:"Gym",
                carNameText:"qwikio-X",
                dateText:"10 Feb",
                isToday:false,
                timeText:"05:30 PM",
              ),
              SizedBox(
                height:20,
              ),
              Center(
                child: Text(
                  "Past Rides", style:TextStyle(
                    fontSize:20,
                    color:textColorGrey,
                    fontWeight:FontWeight.bold
                ),),
              ),
              SizedBox(
                height:30,
              ),
              Text(
                "11 FeB", style:TextStyle(
                  fontSize:16,
                  color:textColorGrey,
                  fontWeight:FontWeight.bold
              ),),
              SizedBox(
                height:20,
              ),
              ScheduledContainer(
                typeText:"Gym",
                carNameText:"qwikio-X",
                dateText:"10 Feb",
                isToday:false,
                timeText:"05:30 PM",
              ),
          SizedBox(
            height:15,
          ),

              ScheduledContainer(
                typeText:"Gym",
                carNameText:"qwikio-X",
                dateText:"10 Feb",
                isToday:false,
                timeText:"05:30 PM",
              ),


            ],
          ),
        ),
      ),
    );
  }
}
