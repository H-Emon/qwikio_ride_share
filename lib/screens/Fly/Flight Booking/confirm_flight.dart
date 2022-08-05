import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/color.dart';

class ConfirmFlight extends StatelessWidget {
  const ConfirmFlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          size: 30,
          color: textColorGrey,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Flight Details",
          style: TextStyle(
              fontSize: 23, color: textColorGrey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
           Container(
             height:420,
              width:400,
             margin:EdgeInsets.symmetric(horizontal:20,vertical:30),
             decoration:BoxDecoration(
               border:Border.all(color:Colors.grey,width:1),
               borderRadius:BorderRadius.circular(25)
             ),
             child:Padding(
               padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical:10),
               child: Column(
                 children: [
                   Container(
                     height:120,

                     child:Column(
                       children: [
                         Row(
                           mainAxisAlignment:MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               crossAxisAlignment:CrossAxisAlignment.start,
                               children: [
                                 Text("SF0",style:TextStyle(
                                   fontSize:40,
                                   color:mainColor,

                                 ),),
                                 Text("21:30",style:TextStyle(
                                     fontSize:16,
                                     color:Colors.grey,

                                 ),)
                               ],
                             ),
                             Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Icon(Icons.flight,size:25,color:mainColor,),
                                 Text("5h 25m",style:TextStyle(
                                   fontSize:13,
                                   color:textColor,

                                 ),)
                               ],
                             ),
                             Column(
                               crossAxisAlignment:CrossAxisAlignment.start,
                               children: [
                                 Text("NYC",style:TextStyle(
                                   fontSize:40,
                                   color:mainColor,

                                 ),),
                                 Text("21:30",style:TextStyle(
                                   fontSize:16,
                                   color:Colors.grey,

                                 ),)
                               ],
                             ),

                           ],
                         ),
                         Row(
                           mainAxisAlignment:MainAxisAlignment.end,
                           children: [
                             Text("Sat,17 August",style:TextStyle(
                               fontSize:16,
                               color:textColor,

                             ),)

                           ],
                         ),

                       ],
                     ),
                   ),
                   Divider(
                      height:30,
                     color:Colors.grey[300],
                     thickness:2,
                     endIndent:8,
                     indent:8,
                   ),
                   Container(
                     height:140,

                     child:Column(
                       mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                       children: [
                         Row(
                           mainAxisAlignment:MainAxisAlignment.start,
                           children: [
                             Column(
                               crossAxisAlignment:CrossAxisAlignment.start,
                               children: [

                                 Text("Passenger",style:TextStyle(
                                   fontSize:16,
                                   color:Colors.grey,

                                 ),),
                                 Text("Abdullah Ali",style:TextStyle(
                                   fontSize:17,
                                   color:textColor,
                                   fontWeight:FontWeight.bold

                                 ),),
                               ],
                             ),


                           ],
                         ),
                         SizedBox(
                           height:20,
                         ),
                         Row(
                           mainAxisAlignment:MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               crossAxisAlignment:CrossAxisAlignment.start,
                               children: [
                                 Text("Seat",style:TextStyle(
                                   fontSize:16,
                                   color:Colors.grey,

                                 ),),
                                 Text("D1",style:TextStyle(
                                   fontSize:17,
                                   color:textColor

                                 ),)
                               ],
                             ),
                             Column(
                               crossAxisAlignment:CrossAxisAlignment.start,
                               children: [
                                 Text("Class",style:TextStyle(
                                   fontSize:16,
                                   color:Colors.grey,

                                 ),),
                                 Text("Economy",style:TextStyle(
                                     fontSize:17,
                                     color:textColor

                                 ),)
                               ],
                             ),

                             Column(
                               crossAxisAlignment:CrossAxisAlignment.start,
                               children: [
                                 Text("Gate",style:TextStyle(
                                   fontSize:16,
                                   color:Colors.grey,

                                 ),),
                                 Text("41",style:TextStyle(
                                     fontSize:17,
                                     color:textColor

                                 ),)
                               ],
                             ),

                           ],
                         ),


                       ],
                     ),
                   ),
                   Divider(
                     height:30,
                     color:Colors.grey[300],
                     thickness:2,
                     endIndent:8,
                     indent:8,
                   ),
                   Column(
                     children: [
                       Text("Scan this barcode!",style:TextStyle(
                         fontSize:15,
                         color:mainColor,
                         fontWeight:FontWeight.w400

                       ),),
                       Image.asset("assets/images/barcodee.jpg",height:55,)
                     ],
                   )


                 ],
               ),
             ),
           ),
          Spacer(),
          Container(
              height:50,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:Border.all(color:mainColor)
              ),
              child: Center(
                child: Text(
                  "Save Tickets",
                  style: TextStyle(fontSize:18,fontWeight:FontWeight.bold,color:mainColor),
                ),
              ),),
          Container(
              height:50,
              width:280,
              margin:EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: buttonColor,
              ),
              child: ElevatedButton(
                onPressed: () {
                  //this for reuseble
                },
                child: Text(
                  "Book More Tickets",
                  style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                ),
              )),
        ],
      ),
    );
  }
}
