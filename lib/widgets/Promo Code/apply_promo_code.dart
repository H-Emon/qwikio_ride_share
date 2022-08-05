import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/widgets/Staff%20Pool/staff_pool_textfield.dart';

import '../../const/color.dart';

class ApplyPromocodeBottomSheet extends StatelessWidget {
  const ApplyPromocodeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 28.0, top: 5),
          child: Text(
            "Choose your ride",
            style: TextStyle(
                color: textColorGrey,
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ...List.generate(
          3,
          (index) => ListTile(
              minLeadingWidth: 20,
              leading: Container(
                child: Image.asset(
                  "assets/images/compact-car-icon-5.png",
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                "qwikio",
                style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
              ),
              subtitle: Text(
                "A good ride for casual rides.",
                style: TextStyle(color: textColorGrey, fontSize: 10),
              ),
              trailing: Column(
                children: [
                  Text(
                    "USD 2500",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      "15 mins",
                      style: TextStyle(color: textColorGrey, fontSize: 10),
                    ),
                  )
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 20,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/Master-Card-Blue-icon.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      "Mastercard",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: textColorGrey, fontSize: 13),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                height: 20,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      color: textColorGrey,
                      size: 16,
                    ),
                    Text(
                      "Schedule", //textAlign:TextAlign.center,
                      style: TextStyle(color: textColorGrey, fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
              height: 55,
              width: 350,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(50),
                color: buttonColor,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Selcet Qwikio",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Maybe Latter",
            style: TextStyle(
                color: textColorGrey,
                fontSize: 13,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 100,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                child: Text(
                  "Promo Code",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Center(
                    child: TextField(
                      onTap: () {},
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter promo code",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height:30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
              height: 50,
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: textColorGrey)),
              child: TextButton(
                child: Text(
                  "Apply",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {},
              )),
        ),
        SizedBox(
          height:30,
        ),
      ],
    );
  }
}
