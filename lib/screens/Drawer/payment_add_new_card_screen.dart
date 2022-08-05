import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';
import '../../widgets/Drawer/payment_card_details_widgets.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);

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
          imgUrl: "assets/images/mastercar.jpg",
          isClickMasterCard:true,
          isClickPaypal:false,
          isClickPynioor:false,
          isClickVisa:true,
        )
    );
  }
}
