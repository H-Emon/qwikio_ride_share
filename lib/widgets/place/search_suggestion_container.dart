import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class SuggestionContainer extends StatelessWidget {
  final String imgUrl, subText;
  final String? amountText;
  const SuggestionContainer(
      {this.amountText = "20/hr",
      required this.imgUrl,
      required this.subText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Container(
                      height: 110,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imgUrl,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )),
          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "switzerland",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.brown[300]),
                            ),
                            Text(
                              subText,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: textColorGrey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "\$",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: textColorGrey),
                            ),
                            Text(
                              amountText!,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: textColorGrey),
                            ),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Text(
                      "One of the best clubs in town. We have\nproduced top international atheletes.",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    Text(
                      ". Free water",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
