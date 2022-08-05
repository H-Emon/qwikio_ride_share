import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../const/color.dart';

class PaynowContainer extends StatelessWidget {
  const PaynowContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0,vertical:10),
          child: Column(
            children: [
              Container(
                height: 40,
                //color: mainColor,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "KHI-JFK",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Image.asset("assets/images/Rectangle 18.png"),
                          SizedBox(
                            width:10,
                          ),
                          Text(
                            "Turkish Airlines",
                            style: TextStyle(
                                fontSize: 14,
                                color: textColorGrey,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height:10,
              ),
              Container(
                height:50,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2:15-7:25",
                          style: TextStyle(
                              fontSize: 16,
                              color: textColor,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "15h 25m . Direct",
                          style: TextStyle(
                              fontSize: 14,
                              color: textColorGrey,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Container(
                      child:  Row(
                        children: [
                          Text(
                            "\$",
                            style: TextStyle(
                                fontSize: 15,
                                color: textColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width:5,
                          ),
                          Text(
                            "49,55",
                            style: TextStyle(
                                fontSize: 25,
                                color: textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),


        SizedBox(
          height:20,
        ),
        Container(
          height:70,

          child:Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,

            children: [
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 16,
                        color: textColorGrey,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "\$49,85",
                    style: TextStyle(
                        fontSize:18,
                        color: textColor,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Container(
                height:50,
                width:200,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  color:mainColor,
                ),
                child:Center(
                  child: Text(
                    "Pay Now",
                    style:TextStyle(
                        color:Colors.white,
                        fontSize:20,
                        fontWeight:FontWeight.bold
                    ),
                  ),
                ),

              )

            ],
          ),
        ),
        Text(
          "This is the final step,"
              " after you touching Pay "
              "Now button, the payment "
              "will be transaction", style:TextStyle(
            color:Colors.grey,
            fontSize:12,
            fontWeight:FontWeight.bold
        ),)
      ],
    );
  }
}
