import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/widgets/Drawer/payment_card_container.dart';

import '../../const/color.dart';

class CardDetailsWidgets extends StatelessWidget {
  final String imgUrl ;
  final bool isClickVisa,isClickMasterCard, isClickPaypal,isClickPynioor;

  const CardDetailsWidgets({
    required this.imgUrl,
    required this.isClickVisa,
    required this.isClickMasterCard,
    required this.isClickPaypal,
    required this.isClickPynioor,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height:60,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [

              isClickVisa?  Container(
                height:45,
                width:60,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(5),
                    border:Border.all(color:textColorGrey,width:1)
                ),
                child:Image.asset("assets/images/visa-512.webp",fit:BoxFit.cover,),
              ) :CardContainer(imgUrl:"assets/images/visa-512.webp" ),

              isClickMasterCard?  Container(
                height:45,
                width:60,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(5),
                    border:Border.all(color:textColorGrey,width:1)
                ),
                child:Image.asset("assets/images/mastercar.jpg",fit:BoxFit.cover,),
              ) :CardContainer(imgUrl:"assets/images/mastercar.jpg" ),
              isClickPaypal?  Container(
                height:45,
                width:60,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(5),
                    border:Border.all(color:textColorGrey,width:1)
                ),
                child:Image.asset("assets/images/paypal.png",fit:BoxFit.cover,),
              ) :CardContainer(imgUrl:"assets/images/paypal.png" ),
              isClickPynioor?  Container(
                height:45,
                width:60,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(5),
                    border:Border.all(color:textColorGrey,width:1)
                ),
                child:Image.asset("assets/images/paynioor.jpg",fit:BoxFit.cover,),
              ) :CardContainer(imgUrl:"assets/images/paynioor.jpg" ),



            ],
          ),
        ),
        SizedBox(
          height:60,
        ),
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [
            Container(
              height:90,
              width:180,
              //color:Colors.green,

              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text( "Name",
                    style:TextStyle(
                        color:textColorGrey ,
                        fontSize:20 ,
                        fontWeight:FontWeight.w600),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      onTap:(){},
                      decoration:InputDecoration(
                        border:InputBorder.none,
                        hintText:"Write name...",
                        hintStyle:TextStyle(
                          color:textColorGrey,
                        ),

                      ),),
                  ),
                ],
              ),
            ),
            Container(
              height:30,
              width:40,
              decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(5),
                  border:Border.all(color:textColorGrey,width:1)
              ),
              child:Image.asset(imgUrl,fit:BoxFit.cover,),
            ),
          ],
        ),
        SizedBox(
          height:10,
        ),
        Container(
          height:90,
          width:320,

          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text( "Card number",
                style:TextStyle(
                    color:textColorGrey ,
                    fontSize:20 ,
                    fontWeight:FontWeight.w600),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  onTap:(){},
                  decoration:InputDecoration(
                    border:InputBorder.none,
                    hintText:"Number..",
                    hintStyle:TextStyle(
                      color:textColorGrey,
                    ),

                  ),),
              ),
            ],
          ),
        ),
        SizedBox(
          height:10,
        ),
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [
            Spacer(),
            Container(
              height:90,
              width:160,


              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text( "Expiry date",
                    style:TextStyle(
                        color:textColorGrey ,
                        fontSize:20 ,
                        fontWeight:FontWeight.w600),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      onTap:(){},
                      decoration:InputDecoration(
                        border:InputBorder.none,
                        hintText:"Date",
                        hintStyle:TextStyle(
                          color:textColorGrey,
                        ),

                      ),),
                  ),
                ],
              ),
            ),
            Container(
              height:90,
              width:160,


              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text( "CVV",
                    style:TextStyle(
                        color:textColorGrey ,
                        fontSize:20 ,
                        fontWeight:FontWeight.w600),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      onTap:(){},
                      decoration:InputDecoration(
                        border:InputBorder.none,
                        hintText:"CVV number",
                        hintStyle:TextStyle(
                          color:textColorGrey,
                        ),

                      ),),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
        SizedBox(
          height:90,
        ),
        Container(
          height:50,
          width:200,
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(12),
            border:Border.all(color:mainColor,width:1.5),
            color: mainColor,
          ),
          child:Center(
            child: Text(
              "Save Change",
              style:TextStyle(
                fontSize:20,
                fontWeight:FontWeight.bold,
                color:  Colors.white,
              ),
            ),
          ),
        ),


      ],
    );
  }
}
