import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/color.dart';
import '../../../widgets/Google Map/location.dart';
import '../../../widgets/Schedule Ride/calender_date_picker.dart';


class SelectQwikio extends StatefulWidget {
  const SelectQwikio({Key? key}) : super(key: key);

  @override
  State<SelectQwikio> createState() => _SelectQwikioState();
}

class _SelectQwikioState extends State<SelectQwikio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.close,
            size: 35,
            color: textColorGrey,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body:Column(
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
                height:200,
                child: GooMapScreen()),
            Container(
              height:370,
              width:double.infinity,
              //color:mainColor,
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:28.0,top:5),
                    child: Text(
                      "Choose your ride",
                      style:TextStyle(
                          color:textColorGrey,
                          fontSize:12,
                          fontWeight:FontWeight.w400
                      ),),
                  ),
                  SizedBox(
                    height:10,
                  ),
                  ListTile(
                    minLeadingWidth:10,
                    leading:Container(
                      child:Image.asset("assets/images/GQ-india-bugatti-car-image.webp", fit:BoxFit.fill,),
                    ),
                    
                    title: Text(
                      "qwikio",
                      style: TextStyle(
                        color:mainColor,
                          fontWeight: FontWeight.w400, fontSize: 13),
                    ),
                    subtitle: Text(
                      "A good ride for casual rides.",
                      style: TextStyle(color: textColorGrey, fontSize: 10),
                    ),
                    trailing:Column(
                      children: [
                        Text(
                          "USD 2500",
                          style: TextStyle(
                              color:textColor,
                              fontWeight: FontWeight.w400, fontSize: 13),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: Text(
                            "15 mins",

                            style: TextStyle(color: textColorGrey, fontSize: 10),
                          ),
                        )
                      ],
                    )
                  ),
                  ListTile(
                      minLeadingWidth:10,
                      leading:Container(
                        child:Image.asset("assets/images/GQ-india-bugatti-car-image.webp", fit:BoxFit.fill,),
                      ),

                      title: Text(
                        "qwikio-X",
                        style: TextStyle(
                            color:mainColor,
                            fontWeight: FontWeight.w400, fontSize: 13),
                      ),
                      subtitle: Text(
                        "A good ride for casual rides.",
                        style: TextStyle(color: textColorGrey, fontSize: 10),
                      ),
                      trailing:Column(
                        children: [
                          Text(
                            "USD 5000",
                            style: TextStyle(
                                color:textColor,
                                fontWeight: FontWeight.w400, fontSize: 13),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:18.0),
                            child: Text(
                              "5 mins",

                              style: TextStyle(color: textColorGrey, fontSize: 10),
                            ),
                          )
                        ],
                      )
                  ),
                  ListTile(
                      minLeadingWidth:10,
                      leading:Container(
                        child:Image.asset("assets/images/GQ-india-bugatti-car-image.webp", fit:BoxFit.fill,),
                      ),

                      title: Text(
                        "qwikio Premium",
                        style: TextStyle(
                            color:mainColor,
                            fontWeight: FontWeight.w400, fontSize: 13),
                      ),
                      subtitle: Text(
                        "A good ride for casual rides.",
                        style: TextStyle(color: textColorGrey, fontSize: 10),
                      ),
                      trailing:Column(
                        children: [
                          Text(
                            "USD 9000",
                            style: TextStyle(
                                color:textColor,
                                fontWeight: FontWeight.w400, fontSize: 13),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:18.0),
                            child: Text(
                              "32 mins",

                              style: TextStyle(color: textColorGrey, fontSize: 10),
                            ),
                          )
                        ],
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.end,
                      children: [
                        Container(
                          height:20,
                          width:90,
                          decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(8),
                            color: mainColor,
                          ),
                          child:Row(
                            mainAxisAlignment:MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child:Image.asset("assets/images/Master-Card-Blue-icon.png", fit:BoxFit.fill,),
                              ),
                              Text(
                                "Mastercard", textAlign:TextAlign.center,
                                style:TextStyle(
                                    color:Colors.white,
                                    fontSize:13),

                              ),

                            ],
                          ),),
                        SizedBox(
                          width:40,
                        ),
                        Container(
                          height:20,
                          width:90,
                          decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(8),
                            color: mainColor,
                          ),
                          child:GestureDetector(
                            onTap:(){
                              showModalBottomSheet(
                                  context: (context),
                                  builder: (context)=>DatePickerBottom(),
                                  isScrollControlled:true,

                              );


                            },
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.calendar_today_outlined,
                                  color:Colors.white,size:16,),
                                Text(
                                  "Schedule", //textAlign:TextAlign.center,
                                  style:TextStyle(
                                      color:Colors.white,
                                      fontSize:13),

                                ),

                              ],
                            ),
                          ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child:Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: buttonColor,

                        ),
                        child: ElevatedButton(
                          onPressed:(){

                          },
                          child: Text(
                            "Confirm pickup",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:FontWeight.w700,
                            ),),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:28.0,top:10),
                    child: Text(
                      "Have Promo Code?",
                      style:TextStyle(
                          color:textColorGrey,
                          fontSize:12,
                          fontWeight:FontWeight.w400
                      ),),
                  ),



                ],
              ),
            )

          ],
        ),

    );
  }
}
