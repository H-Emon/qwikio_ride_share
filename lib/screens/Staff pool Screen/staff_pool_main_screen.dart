
import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/const/color.dart';

import '../../widgets/Staff Pool/alert_dialoge.dart';
import '../../widgets/Staff Pool/elevated_button_widget.dart';
import '../../widgets/Staff Pool/staff_pool_textfield.dart';


class StaffPoolScreen extends StatelessWidget {
   const StaffPoolScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title:Text(
          "Staff Pool",
          style:TextStyle(
            fontSize:20,
            fontWeight:FontWeight.w700,
            color:textColor.withOpacity(0.8),


          ),),
        backgroundColor:Colors.white,
        elevation:0,
        leading:Icon(Icons.arrow_back,size:35,color:textColor,),
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            SizedBox(
              height:20,
            ),
            Text(
                "Generate a code for your staff and Get\nspecial discounts",
                textAlign:TextAlign.center,
                style:TextStyle(
                  fontSize:16
                )
            ),
            SizedBox(
              height:20,
            ),
            StaffTextField(
                labelText: "Full Name",
                hintText: "Write full name"),
            SizedBox(
              height:20,
            ),
            StaffTextField(
                labelText: "Email",
                hintText: "Email Address"),
            SizedBox(
              height:20,
            ),
            StaffTextField(
                labelText: "Company Name",
                hintText: "Company name"),
            SizedBox(
              height:20,
            ),
            Container(
               height:75,
          width:double.infinity,
          margin:EdgeInsets.symmetric(horizontal:35),

          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text( "No.of Staff",
                style:TextStyle(
                    color:textColorGrey ,
                    fontSize:20 ,
                    fontWeight:FontWeight.w600),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  onTap:(){},
                  decoration:InputDecoration(
                    suffixIcon:Icon(Icons.keyboard_arrow_down),
                    border:InputBorder.none,
                    hintText:"Select",
                    hintStyle:TextStyle(
                      color:textColorGrey,
                    ),
                  ),),
              ),
            ],
          ),
        ),
            SizedBox(
              height:20,
            ),
            Row(
              children: [
                Container(
                  height:17,
                  width:17,
                  margin:EdgeInsets.only(left:35),
                  decoration:BoxDecoration(
                    border:Border.all(color:mainColor)
                  ),
                  child: CustomCheckBox(
                      value: false,
                    shouldShowBorder: true,
                    borderColor:Colors.white,
                    checkedFillColor: Colors.white,
                      borderRadius: 8,
                    borderWidth: 1,
                    checkBoxSize:18,
                    onChanged: ( value) {
                      return null;
                    }

                  ),
                ),
                SizedBox(
                  width:7,
                ),
                Text(
                    "Remember my Staff for next purchases.",
                    textAlign:TextAlign.center,
                    style:TextStyle(
                        fontSize:16
                    )
                ),
              ],
            ),
            SizedBox(
              height:130,
            ),
            ElevatedButtonWidget(
                buttonName:"Generate Code",alertDialog:AlertDialogeWidget()),

          ]
        )
      ),
    );
  }
}
