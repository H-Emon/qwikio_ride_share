import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondGridViewScreen extends StatelessWidget {
  SecondGridViewScreen({Key? key}) : super(key: key);

  List gridImg=[


    {
      "img":"assets/images/home-0.png",
      "title": "Home"
    },
    {
      "img":"assets/images/friends.png",
      "title": "Friends"
    },
    {
      "img":"assets/images/hopital.png",
      "title": "Hospital"
    },
    {
      "img":"assets/images/gym.png",
      "title": "Gym"
    },




  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      height:80,
      width: 380,

      child: GridView.builder(
        itemCount:gridImg.length,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 4,

        ),
        itemBuilder: (context, index)=> Container(
          height:80,
          child:Column(
            children: [
              Image.asset(
                gridImg[index]["img"],
                alignment:Alignment.topCenter,
                width:50 ,
                height:55,
            ),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text( gridImg[index]["title"],style:TextStyle(
                    fontWeight:FontWeight.w500,
                    fontSize:14
                ),),
              )
            ],
          ),
        ),),
    );
  }
}
