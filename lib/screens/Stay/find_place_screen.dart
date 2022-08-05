import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../const/color.dart';
import '../../widgets/Stay/img_container.dart';
import '../../widgets/Stay/textfield_container.dart';

class FindPlaceScreen extends StatelessWidget {
  const FindPlaceScreen({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.symmetric(
            horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              PlaceDetailsInputWidgets(
                firstHintText: "Place",
                secondHintText: "Guests",
              ),
              SizedBox(
                height: 20,
              ),
              PlaceDetailsInputWidgets(
                firstHintText: "Date",
                secondHintText: "Nights",
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageContainer(
                      imgUrl: "assets/images/house.png",
                      text: "House",
                    ),
                    ImageContainer(
                      imgUrl: "assets/images/hotel.jpg",
                      text: "Hotels",
                    ),
                    ImageContainer(
                      imgUrl: "assets/images/resort.png",
                      text: "Resorts",
                    ),
                    ImageContainer(
                      imgUrl: "assets/images/apartment.png",
                      text: "Appartments",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 60,
                  width:350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Find Directions",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
