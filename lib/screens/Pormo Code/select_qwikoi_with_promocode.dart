import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';
import '../../widgets/Google Map/location.dart';


class SelectQwikioWithPromoCode extends StatefulWidget {
  const SelectQwikioWithPromoCode({Key? key}) : super(key: key);

  @override
  State<SelectQwikioWithPromoCode> createState() => _SelectQwikioWithPromoCodeState();
}

class _SelectQwikioWithPromoCodeState extends State<SelectQwikioWithPromoCode> {
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
              height:400,
              width:400,
              //color:mainColor,
              child:Column(
                children: [
                  //width:double.infinity,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20.0),
                    child: Container(
                      height:60,
                      child:Row(
                        children: [
                          Container(
                            width:60,
                            height:100,
                            child:Stack(
                              children: [
                                Container(
                                  width:60,
                                  height:60,
                                  child:Image.asset("assets/images/promo-vector.png",fit:BoxFit.fill),
                                ),
                                Positioned(
                                  right:8,
                                    left:8,
                                    top:14,

                                    child:Text(
                                  "-50%",
                                      style:TextStyle(
                                        fontSize:15,
                                        color:Colors.white
                                      ),
                                )),
                              ],
                            ),
                          ),
                          Container(
                            width:300,
                            height:100,
                            child:Center(
                              child: Text("choose your qwikio",
                                  style:TextStyle(
                                      fontSize:17,
                                      color:textColorGrey,
                                      fontWeight:FontWeight.bold
                                  )
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
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
                                    color:textColorGrey,
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
                          ),
                          child:Row(
                            mainAxisAlignment:MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                color:textColorGrey,size:16,),
                              Text(
                                "Schedule", //textAlign:TextAlign.center,
                                style:TextStyle(
                                    color:textColorGrey,
                                    fontSize:13),

                              ),

                            ],
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
        )
    )  ;
  }
}
