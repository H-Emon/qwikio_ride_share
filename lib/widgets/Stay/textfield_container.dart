import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceDetailsInputWidgets extends StatelessWidget {
  final String firstHintText,secondHintText;
  const PlaceDetailsInputWidgets({
    required this.firstHintText,
    required this.secondHintText,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height:50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height:50,
            width:220,
            decoration:BoxDecoration(
                border:Border.all(color:Colors.grey),
                borderRadius:BorderRadius.circular(10),
                color:Colors.grey[200]
            ),
            child: Center(
              child: TextField(
                decoration:InputDecoration(
                    hintText:firstHintText,
                    border:InputBorder.none,
                    contentPadding:EdgeInsets.all(10)
                ),
              ),
            ),
          ),
          Container(
            height:50,
            width:110,
            decoration:BoxDecoration(
                border:Border.all(color:Colors.grey),
                borderRadius:BorderRadius.circular(10),
                color:Colors.grey[200]
            ),
            child: Center(
              child: Row(
                children: [
                  Container(
                    height:50,
                    width:80,
                    child: TextField(
                      decoration:InputDecoration(
                          hintText:secondHintText,
                          border:InputBorder.none,
                          contentPadding:EdgeInsets.all(10)
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_drop_down,)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
