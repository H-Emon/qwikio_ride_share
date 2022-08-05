import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../const/color.dart';
import 'copy_text_dialoge.dart';




class AlertDialogeWidget extends StatelessWidget {
  const AlertDialogeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation:0,
      backgroundColor:mainColor,
      contentPadding:EdgeInsets.all(0),
      content:Container(
        height:550,
        width: 450,
        child: Column(
          children: [
            Expanded(
                flex:1,
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.end,
                      children: [

                        IconButton(onPressed:(){
                          Navigator.of(context).pop();

                        }, icon: Icon(Icons.close, color:Colors.white54,size:25,)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Thank\nYou.",
                          style:TextStyle(fontSize:65,
                              fontWeight:FontWeight.bold,
                              color:Colors.white70)),
                    ),
                  ],)),
            Divider(
              color:Colors.black26,
              thickness:4,
            ),
            Expanded(
                flex:1,
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
                          color:Colors.white ,
                          fontWeight:FontWeight.bold),),
                    SizedBox(
                      height:20,
                    ),
                    Container(
                      height:30,

                      color:Colors.blue[400],
                      child:Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "https://www.link.com/EfsW2d43f32/e-2f",
                          style:TextStyle(
                            color: Colors.white,

                          ),),
                      ),
                    ),
                    SizedBox(
                      height:60,
                    ),
                    Container(
                      height:50,
                      width:200,
                      margin:EdgeInsets.only(left:40),

                      child:ElevatedButton(
                           style:ElevatedButton.styleFrom(
                             primary:Colors.white,
                             elevation:0,
                           ),
                          onPressed:(){
                            Navigator.of(context).pop();
                            showDialog(context: context, builder:(context)=>CopyTextDialoge() );
                          },
                          child:Container(
                            height:50,
                            width:120,
                            child:Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.link, color:mainColor,size:25,),
                                Text("Copy Text", style:TextStyle(color:mainColor,fontSize:18, fontWeight:FontWeight.w700),)
                              ],
                            ),
                          )
                      ),
                    ),

                  ],
                )),


          ],
        ),
      ),
    )





    ;
  }
}
