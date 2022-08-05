import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../const/color.dart';

class PifRidePage extends StatelessWidget {
  const PifRidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title:Text(
          "Pay It Forward",
          style:TextStyle(
            fontSize:20,
            fontWeight:FontWeight.w700,
            color:textColor.withOpacity(0.8),


          ),),
        backgroundColor:Colors.white,
        elevation:0,
        leading:Icon(Icons.arrow_back,size:35,color:textColor,),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              SizedBox(
                height:20,
              ),
              Text(
                  "Donate and help those who can not afford\nto pay for rides",
                  textAlign:TextAlign.center,
                  style:TextStyle(
                      fontSize:16
                  )
              ),
              SizedBox(
                height:30,
              ),
              CircleAvatar(
                radius:110,
                child:Image.asset("assets/images/donate 2.png"),
                backgroundColor:mainColor,
                //backgroundImage:AssetImage("assets/images/donate.png",)
              ),
              SizedBox(
                height:30,
              ),
              Container(
                height:100,
                width:450,
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width:60,
                      height:60,
                      decoration:BoxDecoration(

                          borderRadius:BorderRadius.circular(30),
                          border:Border.all(color:Colors.white24, width:2)
                      ),
                      child:Icon(Icons.remove, size:40,color:textColorGrey,),
                    ),
                    Text(
                      "\$25",style:TextStyle(
                      color:textColorGrey,
                      fontSize:22
                    ),),
                    Text(
                      "\$50",style:TextStyle(
                        color:textColor,
                        fontSize:40,
                      fontWeight:FontWeight.w700
                    ),),
                    Text(
                      "\$25",style:TextStyle(
                        color:textColorGrey,
                        fontSize:22
                    ),),
                    Container(
                      width:60,
                      height:60,
                      decoration:BoxDecoration(

                        borderRadius:BorderRadius.circular(35),
                        border:Border.all(color:Colors.white24, width:2)
                      ),
                      child:Icon(Icons.add, size:40,color:mainColor,),
                    ),
                  ],
                )
              ),
              SizedBox(
                height:30,
              ),
              Container(
                height:60,
                width:300,
                decoration:BoxDecoration(
                  color: mainColor,
                  borderRadius:BorderRadius.circular(15),

                ),
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children: [
                    Text("Donate",
                      style:TextStyle(
                      color:Colors.white,
                        fontSize:25,
                        fontWeight:FontWeight.bold
                    ),),
                    SizedBox(
                      width:50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height:20,
                          width:50,
                          decoration:BoxDecoration(
                            color:Colors.blue[400],
                            borderRadius:BorderRadius.circular(5),

                          ),
                          child:Text("1 Ride",
                            //textAlign:TextAlign.center,
                            style:TextStyle(
                                color:Colors.white,
                                fontSize:15,

                            ),)
                      ),
                    )

                  ],
                )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "The Avg. Price for 1 ride is Approx. \$50",
                    textAlign:TextAlign.center,
                    style:TextStyle(
                        fontSize:13,
                      color:textColorGrey
                    )
                ),
              ),
              SizedBox(
                height:50,
              ),
              ListTile(
                leading:Container(
                  height:50,
                  width:50,
                  decoration:BoxDecoration(
                    color:Colors.green,
                    borderRadius:BorderRadius.circular(30)
                  ),
                  child: Icon(
                    Icons.monetization_on_outlined, size:30,color:Colors.white,),
                ),
                title: Text(
                  "Ali Pasha just donated", style:TextStyle(
                    fontWeight:FontWeight.w600,
                    fontSize:18
                ),),
                subtitle: Text(
                  "40 sces ago", style:TextStyle(
                    color:textColorGrey,
                    fontSize:15
                ),),
                trailing:Text(
                  "+\$525", style:TextStyle(
                    color:Colors.green,
                    fontWeight:FontWeight.w600,
                    fontSize:17
                ),),
              ),


            ]
        ),
      )   ,
    );
  }
}
