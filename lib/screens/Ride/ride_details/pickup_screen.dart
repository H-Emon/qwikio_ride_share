import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../const/color.dart';
import '../../../widgets/Google Map/location.dart';

class PickUpScreen extends StatefulWidget {
  const PickUpScreen({Key? key}) : super(key: key);

  @override
  State<PickUpScreen> createState() => _PickUpScreenState();
}

class _PickUpScreenState extends State<PickUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
         "Pickup",
          style: TextStyle(
              color: textColorGrey,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        leading: Icon(
          Icons.close,
          size: 35,
          color: textColorGrey,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body:Column(
        children: [
          Container(
            height:450,
              child: GooMapScreen()),
          Container(
            height:210,
            width:double.infinity,
            //color:mainColor,
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:28.0),
                  child: Text(
                    "Where do you want to go ?",
                    style:TextStyle(
                        color:textColor,
                        fontSize:18,
                        fontWeight:FontWeight.w700
                    ),),
                ),
                SizedBox(
                  height:10,
                ),
                Container(
                  height:100,
                  width:300,
                  padding:EdgeInsets.only(left:28),
                  child: Column(
                    children: [

                      ListTile(
                        minLeadingWidth:10,
                        leading: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height:12,
                            width: 12,
                            decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(6),
                                color:mainColor
                            ),
                          ),
                        ),
                        title: Text(
                          "Wellington Photostation",
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                        ),
                        subtitle: Text(
                          "London - United Kingdom",
                          style: TextStyle(color: textColorGrey, fontSize: 10),
                        ),
                        trailing: Icon(
                          Icons.favorite_border,
                          color: textColorGrey,
                          size: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:28.0),
                        child: Row(
                          children: [
                            Container(
                              height:18,
                              width:140,
                              decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(20),
                                color: mainColor,
                              ),
                              child:Text(
                                "wellington o1 paviloin", textAlign:TextAlign.center,style:TextStyle(color:Colors.white, fontSize:12),

                              ),
                            ),
                            SizedBox(
                              width:5,
                            ),
                            Container(
                              height:18,
                              width:90,
                              decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(20),
                                color: mainColor,
                              ),
                              child:Text(

                                "pold & carmi", textAlign:TextAlign.center,     style:TextStyle(color:Colors.white, fontSize:12),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height:20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child:Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: buttonColor,

                      ),
                      child: ElevatedButton(
                        onPressed:(){

                        },
                        child: Text(
                          "Confirm pickup",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight:FontWeight.w700,
                          ),),
                      )
                  ),
                )


              ],
            ),
          )

        ],
      )
    );
  }
}
