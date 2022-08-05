import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class CardContainer extends StatelessWidget {
  final String imgUrl;
  const CardContainer({ required this.imgUrl,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:80,
      width:90,
      child:Stack(
        children: [
          Positioned(
            top:18,
            child: Opacity(
              opacity:0.3,
              child: Container(
                height:45,
                width:65,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(5),
                    border:Border.all(color:textColorGrey,width:1)
                ),
                child:Image.asset(imgUrl,fit:BoxFit.cover,),
              ),
            ),
          ),
          Positioned(
              top:10,

              right:15,
              child:Container(
                height:23,
                width:23,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(11.5),
                    color:Colors.grey
                ),
                child:Icon(Icons.add,color:Colors.white,size:22,),
              ))
        ],
      ),
    );
  }
}
