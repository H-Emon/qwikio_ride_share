import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/widgets/Promo%20Code/apply_promo_code.dart';
import 'package:qwikio_ride_share/widgets/Ride/accept_to_%20start_dialoge.dart';
import 'package:qwikio_ride_share/widgets/Schedule%20Ride/calender_date_picker.dart';

import '../../../const/color.dart';
import '../../../widgets/Google Map/location.dart';
import '../../../widgets/Ride/Congratulations_alert.dart';

class CarOnWayScreen extends StatefulWidget {
  const CarOnWayScreen({Key? key}) : super(key: key);

  @override
  State<CarOnWayScreen> createState() => _CarOnWayScreenState();
}

class _CarOnWayScreenState extends State<CarOnWayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          leading:Icon(
            Icons.close,
            size: 35,
            color: textColorGrey,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body:Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:38.0),
              child: Container(
                height:100,
                width:double.infinity,
                color:Colors.white,
                child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Container(
                      height:35,
                      child:Row(
                        children: [
                          Container(
                            height:12,
                            width: 12,
                            decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(6),
                                border:Border.all(color:mainColor)
                            ),
                          ),
                          SizedBox(width:10,),
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [

                              Text(
                                "New Wellington Alluminium Shop", style:TextStyle(
                                  color:textColorGrey,
                                  fontSize:14,
                                  fontWeight:FontWeight.w400
                              ),),
                              Text(
                                "-Side Road- USA", style:TextStyle(
                                color:textColorGrey,
                                fontSize:10,

                              ),),


                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:3.0),
                      child: Container(
                        height:20,
                        width:2,
                        color:mainColor,
                      ),
                    ),
                    Container(
                      height:35,
                      child:Row(
                        children: [
                          Container(
                            height:12,
                            width: 12,
                            decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(6),
                                border:Border.all(color:mainColor)
                            ),
                          ),
                          SizedBox(width:10,),
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [

                              Text(
                                " Wellington photostation", style:TextStyle(
                                  color:textColorGrey,
                                  fontSize:14,
                                  fontWeight:FontWeight.w400
                              ),),
                              Text(
                                "washington,USA", style:TextStyle(
                                color:textColorGrey,
                                fontSize:10,

                              ),),


                            ],
                          ),
                        ],
                      ),
                    ),



                  ],
                ),
              ),
            ),

            Container(
                height:345,
                child:GooMapScreen()),
            Container(
              height:230,
              width:500,
              //color:Colors.green,
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Meet at the pickup point at wellington station",
                            textAlign:TextAlign.start,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.w700,
                            ),),
                          Container(
                            height:40,
                            width:40,
                            decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(7),
                                border:Border.all(color:textColorGrey)
                            ),
                            child: Text(
                              "02\nmins",
                              textAlign:TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight:FontWeight.w700,
                                color:textColorGrey
                              ),),
                          ),
                        ],
                      ),
                        SizedBox(
                          height:20,
                        ),
                        ListTile(
                          title:Row(
                            children: [
                              Text("John Doe.", style:
                              TextStyle(
                                color:textColorGrey,
                                fontSize:20,
                                fontWeight:FontWeight.w700
                              ),),
                              SizedBox(
                                width:15,
                              ),
                              Text("5.0",style:TextStyle(
                                  color:textColorGrey,
                                  fontSize:18,
                                  fontWeight:FontWeight.w600
                              ) ,),
                              Icon(Icons.star, size:18,)
                            ],
                          ),
                          leading:Stack(
                            children: [
                              CircleAvatar(
                                child:Image.asset("assets/images/avatar-2092113__340.webp"),
                                radius:23,
                              ),
                              Positioned(
                                top:3,
                                  right:0,
                                  child: Container(
                                    height:15,
                                    width:15,
                                    decoration:BoxDecoration(
                                      borderRadius:BorderRadius.circular(7.5),
                                      color:Colors.greenAccent
                                    ),
                                    child:Icon(Icons.check,size:10,color:Colors.white,),
                                  ))
                            ],
                          ),
                          subtitle:Row(
                            children: [
                              Text("Blue Bugatti Chiron", style:
                              TextStyle(
                                  color:textColor,
                                  fontSize:12,
                                  fontWeight:FontWeight.w300
                              ),),
                              SizedBox(
                                width:12,
                              ),
                              Text("T16 Bug",style:TextStyle(
                                  color:textColorGrey,
                                  fontSize:10,

                              ) ,),

                            ],
                          ),
                          trailing:Image.asset("assets/images/GQ-india-bugatti-car-image.webp",width:100,height:60,),
                        ),
                        SizedBox(
                          height:10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.mic,
                                size:40,
                                color:Colors.blueGrey,),
                            ),
                            GestureDetector(
                              onTap:(){},
                              child: Container(
                                height:45,
                                width:250,
                                decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(15),
                                  border:Border.all(color:Colors.white24,),
                                ),child:Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:28.0,vertical:8),
                                  child: Text("Message....", style:TextStyle(
                                  fontSize:15,color:textColorGrey
                              ),),
                                ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap:(){
                                  showModalBottomSheet(
                                    shape:RoundedRectangleBorder(
                                      borderRadius:BorderRadius.only(
                                        topLeft:Radius.circular(25),
                                        topRight:Radius.circular(25),
                                      )
                                    ),
                                      isScrollControlled: true,

                                      context: context,
                                      builder:(context)=>ApplyPromocodeBottomSheet());
                                  //showDialog(context: context, builder:(context)=> CongrsAlertWidgets());
                                },
                                child: CircleAvatar(
                                  radius:25,
                                  backgroundColor:mainColor,
                                  child:Icon(Icons.call,color:Colors.white,size:25,),
                                ),
                              ),
                            )

                          ],
                        )





                      ],
                    ),
                  ),




                ],
              ),
            )

          ],
        )
    );
  }
}
