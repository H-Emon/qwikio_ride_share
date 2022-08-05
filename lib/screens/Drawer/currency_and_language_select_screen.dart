import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/widgets/Staff%20Pool/staff_pool_textfield.dart';

import '../../const/color.dart';
import '../../widgets/Drawer/payment_card_details_widgets.dart';

class CurrencyAndLanguageScreen extends StatelessWidget {
  const CurrencyAndLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          leading:Icon(Icons.close, size:30,color:textColorGrey,),
          elevation:0,
          backgroundColor:Colors.white,
          title:Text("Currency and Language",style:TextStyle(fontSize:25, color:textColorGrey,fontWeight:FontWeight.bold),),
          centerTitle:true,
        ) ,
      body:Column(
        children: [
          SizedBox(
            height:60,
          ),
          StaffTextField(labelText: "Preferred currency", hintText:"USD"),
          SizedBox(
            height:30,
          ),
          StaffTextField(labelText: "Preferred language", hintText:"English"),
        ],
      ),
    );
  }
}
