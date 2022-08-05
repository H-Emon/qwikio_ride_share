import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/color.dart';
import '../../../widgets/Google Map/location.dart';

class FindingRiderScreen extends StatefulWidget {
  const FindingRiderScreen({Key? key}) : super(key: key);

  @override
  State<FindingRiderScreen> createState() => _FindingRiderScreenState();
}

class _FindingRiderScreenState extends State<FindingRiderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Pickup",
            style: TextStyle(
                color: textColorGrey,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          leading: Icon(
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
            Container(
                height:420,
                child:GooMapScreen()),
            Container(
              height:250,
              width:400,
              //color:Colors.green,
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,

                children: [
                  Column(
                    children: [


                      Padding(
                        padding: const EdgeInsets.only(right:220.0,bottom:5),
                        child: Text(
                          "Finding a ride",
                          textAlign:TextAlign.start,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight:FontWeight.w700,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:18.0,vertical:5),
                        child: LinearProgressIndicator(
                          minHeight:5,

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Container(
                          height:100,
                          width:300,
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
                      SizedBox(
                        height:10,
                      ),
                      Container(
                        height:70,
                        child:Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right:260.0),
                              child: Text(
                                "Booking Details", style:TextStyle(
                                color:textColorGrey,
                                fontSize:12
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:18.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/compact-car-icon-5.png",width:40,height:40,),
                                  Text("qwikio", style:TextStyle(
                                    color:mainColor
                                  ),)
                                ],
                              ),
                            )

                          ],
                        ),
                      )





                    ],
                  ),




                ],
              ),
            )

          ],
        )
    );
  }
}
