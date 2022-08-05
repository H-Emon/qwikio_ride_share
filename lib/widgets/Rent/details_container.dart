import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class RentDetailsContainer extends StatelessWidget {
  final String imgUrl,carNameText,carModelText,discountText;
  const RentDetailsContainer({
     required this.imgUrl,
    required this.carNameText,
    required this.carModelText,
    required this.discountText,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 160,
      child: Row(
        children: [
          //mahindra-kuv100-pearl-white 1.png
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                      imgUrl),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.car_rental),
                            Text(
                              "Trunk",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.car_repair),
                            Text(
                              "Smart Keys",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 15,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow[200],
                        ),
                        child: Row(
                          children: [
                            Text(
                              discountText,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.red[300],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    carNameText,
                    style: TextStyle(
                      fontSize: 11,
                      color: textColorGrey,
                    ),
                  ),
                  Text(
                    carModelText,
                    style: TextStyle(
                      fontSize: 12,
                      color: textColor,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        size: 12,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Ruby Flare Red",
                        style: TextStyle(
                          fontSize: 10,
                          color: textColorGrey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red[800]),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "5 mins away",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          "Details",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          height: 40,
                          width: 110,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black),
                            child: Row(
                              children: [
                                Text(
                                  "Rent Now",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  width:5,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 14,
                                )
                              ],
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
