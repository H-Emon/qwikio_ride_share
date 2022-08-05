 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
   GridViewScreen({Key? key}) : super(key: key);

   List gridImg=[
     {
       "img":"assets/images/main car 2.png",
        "title": "Ride"
     },
     {
       "img":"assets/images/home-1110868_1280.webp",
       "title": "Stay"
     },
     {
       "img":"assets/images/fly.webp",
       "title": "Fly"
     },
     {
       "img":"assets/images/car-rental.png",
       "title": "Rent"
     },
     {
       "img":"assets/images/pay.png",
       "title": "Pay"
     },
     {
       "img":"assets/images/icon-2423354_1280.webp",
       "title": "Place"
     },


   ];
   
   
 
   @override
   Widget build(BuildContext context) {
     return Container(
       height:200,
       width: 300,
       //color:Colors.green,
       child: GridView.builder(
         itemCount:gridImg.length,
         gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 3,
           crossAxisSpacing:30,
         mainAxisSpacing: 30),
         itemBuilder: (context, index)=> Container(
           height:20,
           width: 30,
           //color:Colors.red,
           child:Column(
             children: [
               Image.asset(
                 gridImg[index]["img"],
                 alignment:Alignment.topCenter,
                 width:50 ,
                 height:55,),
               Padding(
                 padding: const EdgeInsets.all(3.0),
                 child: Text( gridImg[index]["title"],style:TextStyle(
                   fontWeight:FontWeight.w500,
                   fontSize:14
                 ),),
               )
             ],
           ),
         ),),
     );
   }
 }
 