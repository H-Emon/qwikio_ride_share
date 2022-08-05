import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String buttonName;
  final Widget alertDialog;


  const ElevatedButtonWidget({ required this.buttonName,required this.alertDialog, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: buttonColor,

        ),
        child: ElevatedButton(
          onPressed:(){
            showDialog(context: context, builder:(context)=> alertDialog); //this for reuseble
          },
          child: Text(
            buttonName,
            style: TextStyle(
                fontSize: 20
            ),),
        )
    );
  }




}









