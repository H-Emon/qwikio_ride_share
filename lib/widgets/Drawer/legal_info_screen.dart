import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class LegalInfo extends StatelessWidget {
  const LegalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:Icon(Icons.close, size:30,color:textColorGrey,),
        elevation:0,
        backgroundColor:Colors.white,
        title:Text("Legal info",style:TextStyle(fontSize:25, color:textColorGrey,fontWeight:FontWeight.bold),),
        centerTitle:true,
      ) ,
      body:Column(
        children: [
        SizedBox(
          height:40,
        ),
          Expanded(
              flex:1,child:Padding(
                padding: const EdgeInsets.symmetric(horizontal:30),
                child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Text("Privacy Policy", style:TextStyle(
                  color:textColorGrey,fontSize:22,fontWeight:FontWeight.bold
            ),),
            SizedBox(
                height:20,
            ),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                  "Tincidunt adipiscing fames convallis mi consequat. Pellentesque "
                  "sit parturient risus ut et. Purus tortor leo est felis vitae "
                  "nulla gravida massa. Risus, nunc hendrerit nullam ac at.", style:TextStyle(
                  color:textColorGrey,fontSize:18,fontWeight:FontWeight.w400
            ),textAlign:TextAlign.justify,)
        ],
      ),
              )),
          Expanded(
              flex:2,child:Padding(
            padding: const EdgeInsets.symmetric(horizontal:30),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text("Information collection and use", style:TextStyle(
                  color:textColorGrey,fontSize:22,fontWeight:FontWeight.bold
                ),),
                SizedBox(
                  height:20,
                ),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                    "Tincidunt adipiscing fames convallis mi consequat. "
                    "Pellentesque sit parturient risus ut et. Purus tortor "
                    "leo est felis vitae nulla gravida massa. Risus, nunc hendrerit"
                    " nullam ac at.Lorem ipsum dolor sit amet, consectetur adipiscing"
                    " elit. Tincidunt adipiscing fames convallis mi consequat. "
                    "Pellentesque sit parturient risus ut et. Purus tortor leo "
                    "est felis vitae nulla gravida massa. Risus, nunc hendrerit "
                    "nullam ac at.", style:TextStyle(
                    color:textColorGrey,fontSize:18,fontWeight:FontWeight.w400
                ),textAlign:TextAlign.justify,)
              ],
            ),
          )),


        
        ]
      ),
    );
  }
}
