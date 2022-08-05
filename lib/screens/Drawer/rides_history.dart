import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class RidesHistory extends StatefulWidget {


   RidesHistory({Key? key}) : super(key: key);


  @override
  State<RidesHistory> createState() => _RidesHistoryState();
}

class _RidesHistoryState extends State<RidesHistory> with SingleTickerProviderStateMixin {



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:3, child:Scaffold(
      appBar:AppBar(
        leading:Icon(
          Icons.close, size:30,color:textColorGrey,),
        elevation:0,
        backgroundColor:Colors.white,
        title:Text(
          "Rides History",style:TextStyle(fontSize:25, color:textColorGrey,fontWeight:FontWeight.bold),),
        centerTitle:true,

      ) ,
      body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30.0),
              child: Card(
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(12),),
                elevation:5,
                child:TabBar(
                  indicator:BoxDecoration(
                      borderRadius:BorderRadius.circular(12),
                      color:mainColor
                  ),
                  unselectedLabelColor:textColorGrey,
                  tabs: [
                    Tab(child:Text("Day",
                      style:TextStyle(fontSize:18,fontWeight:FontWeight.w400),),),
                    Tab(child:Text(
                        "Week", style:TextStyle(fontSize:18,fontWeight:FontWeight.w400)),),
                    Tab(child:Text(
                        "Month",style:TextStyle(fontSize:18,fontWeight:FontWeight.w400) ),),

                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                  children:[
                    Column(
                      children: [
                        ...List.generate(4, (index) =>
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
                            ) )
                      ],
                    ), //make Useable plz
                    Column(
                      children: [
                        ...List.generate(4, (index) =>
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
                            ) )
                      ],
                    ),
                    Column(
                      children: [
                        ...List.generate(4, (index) =>
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
                            ) )
                      ],
                    ),


                  ]),
            ),


          ],
        ),
    )

    );
  }
}






