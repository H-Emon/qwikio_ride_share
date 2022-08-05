import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class RentDetails extends StatelessWidget {
  final String imgUrl,titleText,subText,priceText,priceSubText;
  const RentDetails({
     required this.imgUrl,
    required this.titleText,
    required this.subText,
    required this.priceText,
    required this.priceSubText,

    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:200,
      width:200,
      margin:EdgeInsets.symmetric(horizontal:10) ,
      child:Column(
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  Text(
                   titleText,
                    style: TextStyle(
                      fontSize: 14,
                      color: textColorGrey,

                    ),
                  ),
                  Text(
                   subText,
                    style: TextStyle(
                      fontSize: 12,
                      color:Colors.grey,

                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    priceText,
                    style: TextStyle(
                      fontSize: 14,
                      color: textColorGrey,

                    ),
                  ),
                  Text(
                    priceSubText,
                    style: TextStyle(
                      fontSize: 12,
                      color:Colors.grey,

                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height:100,
              child: Image.asset(imgUrl)),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: Text(
                  "Details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      color: textColorGrey,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(20),
                        bottomRight:Radius.circular(20) ),
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text(
                        "Rent Now",
                        style: TextStyle(
                            fontSize: 12,
                            color:Colors.white),
                      ),
                      SizedBox(
                        width:5,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 12,
                      )
                    ],
                  ),
                ),
              )
            ],
          )


        ],
      ),
    );
  }
}
