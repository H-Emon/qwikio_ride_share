import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/color.dart';

class PassengersNum extends StatelessWidget {
  const PassengersNum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Cancel",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      fontWeight: FontWeight.w400)),
              SizedBox(
                width: 90,
              ),
              Text("Passengers",
                  style: TextStyle(
                      fontSize: 18,
                      color: textColorGrey,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        SizedBox(
          height:20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:18.0,vertical:5),
          child: Container(
            height:50,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Adults",
                  style: TextStyle(
                      color: textColorGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height:45,
                  width:100,

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height:25,
                        width:25,
                        decoration:BoxDecoration(
                            border:Border.all(color:textColorGrey,width:2)
                        ),
                        child:Icon(Icons.remove,color:textColorGrey,size:20,),
                      ),
                      Text("0",
                          style: TextStyle(
                              fontSize: 20,
                              color: textColorGrey,
                              fontWeight: FontWeight.w400)),
                      Container(
                        height:25,
                        width:25,

                        decoration:BoxDecoration(
                          border:Border.all(color:textColorGrey,width:2)
                        ),
                        child:Icon(Icons.add,color:textColorGrey,size:20,),
                      )
                    ],
                  ),
                )


              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical:5),
          child: Container(
            height:50,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Children",
                      style: TextStyle(
                          color: textColorGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Ages 2 to 17",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  height:45,
                  width:100,

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height:25,
                        width:25,
                        decoration:BoxDecoration(
                            border:Border.all(color:textColorGrey,width:2)
                        ),
                        child:Icon(Icons.remove,color:textColorGrey,size:20,),
                      ),
                      Text("0",
                          style: TextStyle(
                              fontSize: 20,
                              color: textColorGrey,
                              fontWeight: FontWeight.w400)),
                      Container(
                        height:25,
                        width:25,

                        decoration:BoxDecoration(
                            border:Border.all(color:textColorGrey,width:2)
                        ),
                        child:Icon(Icons.add,color:textColorGrey,size:20,),
                      )
                    ],
                  ),
                )


              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical:5),
          child: Container(
            height:50,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Infants",
                      style: TextStyle(
                          color: textColorGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Younger than 2",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  height:45,
                  width:100,

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height:25,
                        width:25,
                        decoration:BoxDecoration(
                            border:Border.all(color:textColorGrey,width:2)
                        ),
                        child:Icon(Icons.remove,color:textColorGrey,size:20,),
                      ),
                      Text("0",
                          style: TextStyle(
                              fontSize: 20,
                              color: textColorGrey,
                              fontWeight: FontWeight.w400)),
                      Container(
                        height:25,
                        width:25,

                        decoration:BoxDecoration(
                            border:Border.all(color:textColorGrey,width:2)
                        ),
                        child:Icon(Icons.add,color:textColorGrey,size:20,),
                      )
                    ],
                  ),
                )


              ],
            ),
          ),
        ),
        SizedBox(
          height:200,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);

          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 28.0, vertical: 5),
            child: Column(
              children: [
                Text(
                  "Done",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "0 passengers",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

        ),
        SizedBox(
          height: 20,
        ),

      ],
    );
  }
}
