import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';
import '../../widgets/Rent/car_rent_details_container.dart';
import '../../widgets/Rent/details_container.dart';

class CarSuvScreen extends StatelessWidget {
  const CarSuvScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          size: 30,
          color: textColorGrey,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Rent a Car",
          style: TextStyle(
              fontSize: 23, color: textColorGrey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text(
                "What would you like to\ndrive, Abdullah?",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: DefaultTabController(
                  length: 3,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TabBar(
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: mainColor),
                        tabs: [
                          Container(
                            height: 90,
                            width: 300,
                            child: Stack(
                              children: [
                                Image.asset("assets/images/image 6.png"),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Standard",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/images/image 7.png",
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Prestige",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            child: Stack(
                              children: [
                                Image.asset("assets/images/image 6.png"),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "SUV",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 20,
              margin: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search Your Car",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            RentDetailsContainer(
              imgUrl: "assets/images/mahindra-kuv100-pearl-white 1.png",
              carNameText: "2020 Hyundai",
              carModelText: "Santa Fe SEL",
              discountText: "Save \$4,446",
            ),
            RentDetailsContainer(
              imgUrl: "assets/images/image 11.png",
              carNameText: "2020 Mazata",
              carModelText: "CX-9 Touringl",
              discountText: "Save \$2,446",
            ),
            RentDetailsContainer(
              imgUrl: "assets/images/image 14.png",
              carNameText: "2020 Hyundai",
              carModelText: "Santa Fe SEL",
              discountText: "Save \$4,446",
            ),
            RentDetailsContainer(
              imgUrl: "assets/images/mahindra-kuv100-pearl-white 1.png",
              carNameText: "2020 Hyundai",
              carModelText: "Santa Fe SEL",
              discountText: "Save \$4,446",
            ),

          ],
        ),
      ),
    );
  }
}
