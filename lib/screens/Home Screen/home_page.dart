import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/widgets/Home%20page/Sceond_grid_view.dart';
import '../../const/color.dart';


class SceondHomePage extends StatelessWidget {
  const SceondHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(
          onPressed:(){},
          icon:Icon(Icons.menu),),
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
              height:260,
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
                          height:160,
                          width:300,
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(15),
                            color:Colors.white
                          ),
                          child:Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "BOOK A RIDE", style:TextStyle(
                                      color:textColorGrey,
                                      letterSpacing:2,
                                      fontSize:12,
                                      fontWeight:FontWeight.w700
                                    ),),
                                    Container(
                                      height:20,
                                      width:100,
                                      decoration:BoxDecoration(
                                          borderRadius:BorderRadius.circular(20),
                                          color: Colors.white,
                                          border:Border.all(color:mainColor,width:1)
                                      ),
                                      child:Text(

                                        "Schedule Ride",style:TextStyle(color:mainColor, fontSize:13),textAlign:TextAlign.center,

                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height:20,
                                      width:180,

                                      child:Row(
                                        children: [
                                          Container(
                                            height:12,
                                            width: 12,
                                            decoration:BoxDecoration(
                                                borderRadius:BorderRadius.circular(6),
                                                border:Border.all(color:mainColor)
                                            ),
                                          ),
                                         SizedBox(width:10,),
                                          Text(
                                            "Your current location", style:TextStyle(
                                              color:textColorGrey,
                                              letterSpacing:2,
                                              fontSize:11,
                                              fontWeight:FontWeight.w700
                                          ),),
                                        ],
                                      ),
                                    ),

                                    Icon(Icons.arrow_back_ios, size:15,),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:3.0),
                                  child: Container(
                                    height:20,
                                    width:2,
                                    color:mainColor,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height:22,
                                      width:220,

                                      child:Row(
                                        children: [
                                          Container(
                                            height:12,
                                            width: 12,
                                            decoration:BoxDecoration(
                                                borderRadius:BorderRadius.circular(6),
                                                border:Border.all(color:mainColor)
                                            ),
                                          ),
                                          SizedBox(
                                            width:10,),
                                          Text(
                                            "Where do you want to go?", style:TextStyle(
                                              color:textColorGrey,
                                              letterSpacing:2,
                                              fontSize:11,
                                              fontWeight:FontWeight.w700
                                          ),),
                                        ],
                                      ),
                                    ),

                                    Icon(Icons.search, size:15,),
                                  ],
                                ),
                                SizedBox(
                                  height:10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height:18,
                                      width:140,
                                      decoration:BoxDecoration(
                                          borderRadius:BorderRadius.circular(20),
                                          color: Colors.blueGrey,
                                      ),
                                      child:Text(
                                        "2972 Westheimer Rd", textAlign:TextAlign.center,     style:TextStyle(color:Colors.white, fontSize:13),

                                      ),
                                    ),
                                    SizedBox(
                                      width:5,
                                    ),
                                    Container(
                                      height:18,
                                      width:100,
                                      decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(20),
                                        color: Colors.blueGrey,
                                      ),
                                      child:Text(

                                        "6391 Elgin St.", textAlign:TextAlign.center,     style:TextStyle(color:Colors.white, fontSize:13),

                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                      ))
                ],
              ),
            ),
            SizedBox(
              height:15,
            ),
            Padding(
              padding: const EdgeInsets.only(right:200),
              child: Text(
                "Saved routes",
                style:TextStyle(
                    color:textColorGrey,
                    fontSize:25,
                    fontWeight:FontWeight.w700),),
            ),
            SizedBox(
              height:30,
            ),
            SecondGridViewScreen(),
            SizedBox(
              height:30,
            ),
            Container(
              height:130,
              width:400,

              child:PageView.builder(
                physics:BouncingScrollPhysics(),

                  controller:PageController(viewportFraction:0.7),
                  itemCount:3,
                  itemBuilder: (context,index)=>Padding(
                    padding: const EdgeInsets.all(5.0),
                    child:  Container(
                        height:140,
                        width:300,
                        decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(15),
                            color:Colors.blue[100]
                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex:1,
                                  child:Container(
                                    child:Image.asset("assets/images/map.png"),
                                  ),),
                              Expanded(
                                flex:2,
                                child:  Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Go home on Pod Flex", style:TextStyle(
                                        color:textColorGrey,
                                        letterSpacing:2,
                                        fontSize:12,
                                        fontWeight:FontWeight.w700
                                    ),),
                                    SizedBox(
                                      height:10,
                                    ),
                                    Container(
                                      height:12,
                                      width:180,

                                      child:Row(
                                        children: [
                                          Container(
                                            height:8,
                                            width: 8,
                                            decoration:BoxDecoration(
                                                borderRadius:BorderRadius.circular(4),
                                                border:Border.all(color:mainColor)
                                            ),
                                          ),
                                          SizedBox(width:5,),
                                          Text(
                                            "2972 Westheimer Rd", style:TextStyle(
                                              color:textColorGrey,
                                              fontSize:11,
                                              fontWeight:FontWeight.w700
                                          ),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:3.0),
                                      child: Container(
                                        height:15,
                                        width:1,
                                        color:mainColor,
                                      ),
                                    ),
                                    Container(
                                      height:15,
                                      width:180,

                                      child:Row(
                                        children: [
                                          Container(
                                            height:8,
                                            width: 8,
                                            decoration:BoxDecoration(
                                                borderRadius:BorderRadius.circular(4),
                                                border:Border.all(color:mainColor)
                                            ),
                                          ),
                                          SizedBox(
                                            width:5,),
                                          Text(
                                            "6391 Elgin St.", style:TextStyle(
                                              color:textColorGrey,
                                              letterSpacing:1,
                                              fontSize:11,
                                              fontWeight:FontWeight.w700
                                          ),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.local_car_wash,size:13,color:Colors.white,),
                                        SizedBox(
                                          width:5,
                                        ),
                                        Container(
                                          height:13,
                                          width:50,
                                          decoration:BoxDecoration(
                                            borderRadius:BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                          child:Text(
                                            "35 mins", textAlign:TextAlign.center,
                                            style:TextStyle(
                                                color:mainColor,
                                                fontSize:10),

                                          ),
                                        ),
                                        SizedBox(
                                          width:5,
                                        ),
                                        Container(
                                          height:15,
                                          width:45,
                                          decoration:BoxDecoration(
                                            borderRadius:BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                          child:Text(

                                            "5.4 kms", textAlign:TextAlign.center,
                                            style:TextStyle(
                                                color:mainColor,
                                                fontSize:10),

                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ) ,)


                            ],
                          ),
                        )
                    ) ,
                  )),
            ),
            SizedBox(
              height:10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Ride", style:TextStyle(
                      fontWeight:FontWeight.w700,
                      fontSize:15
                  ),),
              Container(
                height:20,
                width:90,
                decoration:BoxDecoration(
                 borderRadius:BorderRadius.circular(8),
                  color: mainColor,
                ),
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Sort by date", textAlign:TextAlign.center,
                      style:TextStyle(
                          color:Colors.white,
                          fontSize:11),

                    ),
                    Icon(Icons.keyboard_arrow_down, color:Colors.white,size:18,)
                  ],
                ),),
                ],
              ),
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
                            Text("  08\nMarch",
                              style:TextStyle(
                                  color:textColor,
                                  fontSize:20,
                                  fontWeight:FontWeight.w700

                              ),
                            ),
                            SizedBox(
                              height:10,
                            ),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:15,
                                  width:25,
                                  color:mainColor,
                                  child:Text("USD" ,
                                    style:TextStyle(
                                        color:Colors.white,
                                        fontSize:10
                                    ),

                                  ),),
                                SizedBox(
                                  width:4,
                                ),

                                Text("1200.0",style:TextStyle(
                                    fontSize:12,
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
                                                  fontSize:13,
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
                                    height:20,
                                    width:60,
                                    decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(18),
                                        color: Colors.white,
                                        border:Border.all(color:mainColor,width:1)
                                    ),
                                    child:Text(

                                      "qwikio",style:TextStyle(color:mainColor, fontSize:12),textAlign:TextAlign.center,

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
                                      width:12,
                                      height:12,
                                      //margin:EdgeInsets.all(3),
                                      decoration:BoxDecoration(
                                          borderRadius:BorderRadius.circular(6),
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
                                      width:12,
                                      height:12,
                                      //margin:EdgeInsets.all(3),
                                      decoration:BoxDecoration(
                                          borderRadius:BorderRadius.circular(6),
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
    );
  }
}
