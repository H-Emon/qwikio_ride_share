import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/widgets/Drawer/payment_card_container.dart';
import 'package:qwikio_ride_share/widgets/Drawer/payment_card_details_widgets.dart';

import '../../const/color.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:Icon(Icons.arrow_back, size:30,color:textColorGrey,),
        elevation:0,
        backgroundColor:Colors.white,
        title:Text("Payment Methods",style:TextStyle(fontSize:25, color:textColorGrey,fontWeight:FontWeight.bold),),
        centerTitle:true,
      ) ,
      body:CardDetailsWidgets(
        imgUrl: "assets/images/visa-512.webp",
        isClickMasterCard:false,
        isClickPaypal:false,
        isClickPynioor:false,
        isClickVisa:true,
      )
    );
  }
}
