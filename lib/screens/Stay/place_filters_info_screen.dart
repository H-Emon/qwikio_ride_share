import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';
import '../../widgets/Stay/text_icon_row_widgets.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

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
          "Find a Place",
          style: TextStyle(
              fontSize: 23, color: textColorGrey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              TextIconWidgets(
                mainText: "Your budget",
              ),
              TextIconWidgets(
                mainText: "Star rating",
              ),
              TextIconWidgets(
                mainText: "Review score",
              ),
              TextIconWidgets(
                mainText: "Meals",
              ),
              TextIconWidgets(
                mainText: "Type",
                secondText: "Hotel",
              ),
              TextIconWidgets(
                mainText: "Breakfast Included",
                isButtonNeed: true,
              ),
              TextIconWidgets(
                mainText: "Deals",
                isButtonNeed: true,
              ),
              TextIconWidgets(
                mainText: "Only show available",
                isButtonNeed: true,
                isButtonActive: true,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Apply",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
