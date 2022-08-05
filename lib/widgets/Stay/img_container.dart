import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String imgUrl, text;
  const ImageContainer({required this.imgUrl, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(children: [
        Image.asset(imgUrl, width: 50, height: 70),
        SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ]),
    );
  }
}
