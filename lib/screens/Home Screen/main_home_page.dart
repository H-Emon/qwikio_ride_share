import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/const/color.dart';
import 'package:qwikio_ride_share/widgets/Drawer/Button_navigation.dart';
import 'package:qwikio_ride_share/widgets/Drawer/icon_&_text.dart';
import 'package:qwikio_ride_share/widgets/Home%20page/Grid_view.dart';

 class MainHomePage extends StatelessWidget {
   const MainHomePage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar:AppBar(
         elevation:0,
         actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Stack(
               children: [
                 CircleAvatar(
                    backgroundImage:AssetImage("assets/images/avatar-2092113__340.webp"),

                 ),
                 Positioned(
                   right:0,
                     top:2,
                     child:Container(
                   height:10,
                   width:10,
                   decoration:BoxDecoration(
                     borderRadius:BorderRadius.circular(5),
                     color:Colors.lightGreen
                   ),
                 ))

               ],
             ),
           )

         ],
         backgroundColor:mainColor,
       ),
       body:SingleChildScrollView(
         child: Column(
           children: [
             Container(
               height:210,
               child: Stack(
                 alignment: Alignment.bottomCenter,
                 children: [
                   Column(
                     children: [
                       Container(
                         height:170,
                         decoration:BoxDecoration(
                             borderRadius:BorderRadius.only(
                               bottomLeft:Radius.circular(30),
                               bottomRight:Radius.circular(30),

                             ),
                             color:mainColor
                         ),
                         child:Padding(
                           padding: const EdgeInsets.all(25.0),
                           child: Row(
                             mainAxisAlignment:MainAxisAlignment.spaceBetween,
                             crossAxisAlignment:CrossAxisAlignment.start,
                             children: [
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment:CrossAxisAlignment.start,
                                 children: [
                                   Text("Account Balance",
                                     style:TextStyle(
                                       color:Colors.white,
                                       fontSize:18,

                                     ),
                                   ),

                                   Row(
                                     children: [
                                       Container(
                                         height:18,
                                         width:30,
                                         color:Colors.white30,
                                         child:Text("USD" ,
                                           style:TextStyle(
                                             color:Colors.white,
                                           ),

                                         ),),
                                       SizedBox(
                                         width:10,
                                       ),

                                       Text("5200.00",style:TextStyle(
                                           fontSize:18,
                                           fontWeight:FontWeight.bold,
                                           color:Colors.white
                                       ),)
                                     ],
                                   ),
                                 ],
                               ),
                               Container(
                                 height:30,
                                 width:90,
                                 color:Colors.white,
                                 child:  Padding(
                                   padding: const EdgeInsets.all(3.0),
                                   child: Text(
                                     "Top Up +",
                                     style:TextStyle(
                                         color:mainColor,
                                         fontSize:18,
                                         fontWeight:FontWeight.w700),),
                                 ),
                               ),



                             ],
                           ),
                         ),
                       ),

                     ],
                   ),
                   Positioned(
                    // bottom:60,
                       child:Container(
                     height:90,
                     width:350,
                     decoration:BoxDecoration(
                       borderRadius:BorderRadius.circular(15),
                       color:Colors.white
                     ),
                         child:Row(
                           children: [
                             Expanded(
                                 flex:2,
                                 child:Padding(
                                   padding: const EdgeInsets.all(15.0),
                                   child: Column(
                                     crossAxisAlignment:CrossAxisAlignment.start,
                                     children: [
                                       Text(
                                         "Your safety matters",
                                         style:TextStyle(
                                             fontSize:16,
                                             fontWeight:FontWeight.w700),),
                                       SizedBox(
                                         height:5,
                                       ),
                                       Text(
                                         "Wear a mask while using our\nservice to save yourself and others",
                                         style:TextStyle(
                                             fontSize:12,
                                             ),),
                                     ],
                                   ),
                                 )),
                             Expanded(
                                 flex:1,
                                 child:Image.asset("assets/images/Vector 78.png"))
                           ],
                         )
                   ))
                 ],
               ),
             ),


             SizedBox(
               height:40,
             ),
             GridViewScreen(),
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Row(
                 mainAxisAlignment:MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Recent Activities", style:TextStyle(
                       fontWeight:FontWeight.w700,
                       fontSize:18
                   ),),
                   Text("View All", style:TextStyle(
                       color:textColorGrey,
                       fontSize:15
                   ),)
                 ],
               ),
             ),
             ListTile(
               leading:Icon(
                 Icons.local_pizza, size:30,color:textColorGrey,),
               title: Text(
                 "Pizaa Delivery", style:TextStyle(
                   fontWeight:FontWeight.w600,
                   fontSize:18
               ),),
               subtitle: Text(
                 "2 hours ago", style:TextStyle(
                   color:textColorGrey,
                   fontSize:15
               ),),
               trailing:Text(
                 "-\$42.40", style:TextStyle(
                   color:Colors.pink,
                   fontWeight:FontWeight.w600,
                   fontSize:17
               ),),
             ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Container(
                 height:100,
                  width:400,
                 child:Row(
                   children: [
                     Expanded(
                       child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,

                       children: [
                         Text("  07\nMarch",
                           style:TextStyle(
                             color:textColor,
                             fontSize:22,
                             fontWeight:FontWeight.w700

                           ),
                         ),
                        SizedBox(
                          height:12,
                        ),
                         Row(
                           mainAxisAlignment:MainAxisAlignment.center,
                           children: [
                             Container(
                               height:15,
                               width:30,
                               color:mainColor,
                               child:Text("USD" ,
                                 style:TextStyle(
                                     color:Colors.white,
                                     fontSize:12
                                 ),

                               ),),
                             SizedBox(
                               width:4,
                             ),

                             Text("1200.0",style:TextStyle(
                                 fontSize:15,
                                 fontWeight:FontWeight.bold,
                                 color:textColorGrey
                             ),)
                           ],
                         ),
                       ],
                     ), flex:1,),
                     Expanded(
                       flex:3,
                       child:Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         children: [
                           Row(
                             mainAxisAlignment:MainAxisAlignment.spaceBetween,
                             children: [
                               RichText(
                                 text:TextSpan(
                                     children:[

                                       TextSpan(
                                           text:"Daniel Baloch",
                                           style:TextStyle(
                                               fontWeight:FontWeight.w500,
                                               fontSize:15,
                                               color:textColor
                                           )
                                       ),
                                       TextSpan(
                                         text:" ",

                                       ),

                                       TextSpan(
                                           text:"Driver",
                                           style:TextStyle(
                                             fontSize:10,
                                             color:textColorGrey,

                                           )),

                                     ]
                                 ),
                               ),
                               Container(
                                 height:25,
                                 width:70,
                                 decoration:BoxDecoration(
                                     borderRadius:BorderRadius.circular(20),
                                     color: Colors.white,
                                     border:Border.all(color:mainColor,width:2)
                                 ),
                                 child:Text(

                                   "qwikio",style:TextStyle(color:mainColor, fontSize:14),textAlign:TextAlign.center,

                                 ),
                               )
                             ],
                           ),
                           SizedBox(
                             height:10,
                           ),
                           Container(
                             child: Row(
                               children: [
                                 Container(
                                   width:15,
                                   height:15,
                                   //margin:EdgeInsets.all(3),
                                   decoration:BoxDecoration(
                                     borderRadius:BorderRadius.circular(8),
                                     color:Colors.grey
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(3.0),
                                   child: Text("2972 Westheimer Rd. Santa Ana, Illinois 85486 ",textAlign:TextAlign.center, style:TextStyle(
                                     color:textColorGrey,
                                     fontSize:10
                                   ),),
                                 )
                               ],
                             ),
                           ),
                           SizedBox(
                             height:5,
                           ),
                           Container(
                             child: Row(
                               children: [
                                 Container(
                                   width:15,
                                   height:15,
                                   //margin:EdgeInsets.all(3),
                                   decoration:BoxDecoration(
                                       borderRadius:BorderRadius.circular(8),
                                       color:mainColor
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(3.0),
                                   child: Text("6391 Elgin St. Celina, Delaware 10299",textAlign:TextAlign.center, style:TextStyle(
                                       color:textColorGrey,
                                       fontSize:10
                                   ),),
                                 ),
                               ],
                             ),
                           ),

                         ],
                       ),
                     ) ,

                      ),


                   ],
                 )
               ),
             )
             
           


           ],
         ),
       ),
       drawer:Drawer(child:Column(
         children: [
            SizedBox(
             height:40,
           ),
            Container(
              height:100,
              width:double.maxFinite,
              child:Row(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/Ellipse 78.png", height:90,width:90,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,left:15),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                       Text(
                         "Abdullah Ali", style:TextStyle(
                         fontSize:23,
                         color:textColorGrey,
                         fontWeight:FontWeight.bold
                       ),),
                        SizedBox(
                          height:5
                        ),
                        Text(
                          "Rider", style:TextStyle(
                            fontSize:18,
                            color:textColorGrey,
                            fontWeight:FontWeight.w400
                        ),),

                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
             height:30,
           ),
            IconAndText(
               text: "Profile", icon: Icons.person),
           SizedBox(
             height:20,
           ),
           NavTextWidget(
               text: "Edit Profile"),
           NavTextWidget(
               text: "Scheduled Rides"),
           NavTextWidget(
               text: "Payment Methods"),
           NavTextWidget(
               text: "Ride History"),
           SizedBox(
             height:50,
           ),
           IconAndText(
               text: "Others", icon: Icons.menu),
           SizedBox(
             height:20,
           ),
           NavTextWidget(
               text: "Currency & Language info"),
           NavTextWidget(
               text: "Legal info"),
           SizedBox(
             height:80,
           ),
           Container(
           height:50,
             width:150,

             decoration:BoxDecoration(

               borderRadius:BorderRadius.circular(15),
               border:Border.all(color:textColorGrey,width:1.5),
             ),
             child:Row(
               mainAxisAlignment:MainAxisAlignment.center,
               children: [
               Text("Log Out",style:TextStyle(fontSize:20,color:textColorGrey),),
               SizedBox(
                 width:10,
               ),
               Icon(Icons.logout, size:20,color:textColorGrey,),

             ],),
           )

         ],
       )),
      
     );
   }
 }


