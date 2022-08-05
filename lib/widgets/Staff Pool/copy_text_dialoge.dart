import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';
import '../../screens/Home Screen/main_home_page.dart';

class CopyTextDialoge extends StatelessWidget {
  const CopyTextDialoge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation:0,
      backgroundColor:Colors.white,
      contentPadding:EdgeInsets.all(10),
      content:Container(
        height:160,
        width: 450,
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            SizedBox(
              height:20,
            ),
            Text(
              "Share Link",
              style:TextStyle(
                  fontSize:20 ,
                  color:mainColor ,
                  fontWeight:FontWeight.bold),),
            SizedBox(
              height:20,
            ),
            Container(
              height:30,

              color:Colors.white,
              child:Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "https://www.link.com/EfsW2d43f32/e-2f",
                  style:TextStyle(
                    color: Colors.grey,

                  ),),
              ),
            ),
            SizedBox(
              height:20,
            ),
            Container(
              height:40,
              width:200,
              margin:EdgeInsets.only(left:60),

              child:ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    primary:mainColor,
                    elevation:0,
                  ),
                  onPressed:(){
                   Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MainHomePage(), ));

                  },
                  child:Container(
                    height:50,
                    width:120,
                    child:Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.link, color:Colors.white,size:25,),
                        Text("Copy Text", style:TextStyle(color:Colors.white,fontSize:18, fontWeight:FontWeight.w700),)
                      ],
                    ),
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }
}
