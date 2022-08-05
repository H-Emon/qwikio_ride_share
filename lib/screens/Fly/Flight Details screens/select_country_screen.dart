import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/color.dart';
import '../../../widgets/Fly/Flights Details/search_page_listile_widgets.dart';

class CountrySelectionPage extends StatelessWidget {
  const CountrySelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.arrow_back,
              size: 30,
              color: textColorGrey,
            ),
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              "Search Flights",
              style: TextStyle(
                  fontSize: 23,
                  color: textColorGrey,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5,
                  child: TabBar(
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: mainColor),
                    unselectedLabelColor: textColorGrey,
                    tabs: [
                      Tab(
                        child: Text(
                          "FLYING FROM",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Tab(
                        child: Text("FLYING TO",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height:20,
              ),
              Expanded(
                flex:1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:28.0),
                  child: Container(
                    height:60,

                    child:TextField(
                      decoration:InputDecoration(
                       border:InputBorder.none,
                        hintText:"Scarch Airpot/City",
                        prefixIcon:Icon(Icons.search)

                      ),
                    )
                  ),
                ),
              ),
              Expanded(
                flex:11,
                child: TabBarView(children: [
                  Column(
                    children: [
                      SizedBox(
                        height:30,
                      ),
                      SearchPageListTile(
                        isSecondTile:false,
                        labelText:"NEAREST AIRPOT",
                        subTitleText: "Dhaka international Airpot",
                        tailingText:"KHI",
                        titleText:"Dahaka,Bangladesh",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SearchPageListTile(
                        isSecondTile:false,
                        labelText:"PAST SEARCH",
                        subTitleText: "Jhon F Kennedy Intl Airport",
                        tailingText:"JFK",
                        titleText:"New York City,NY",
                      ),
                      SearchPageListTile(
                        isSecondTile: true,
                        labelText:"NEAREST AIRPOT",
                        subTitleText: "Ankara international Airpot",
                        tailingText:"TUR",
                        titleText:"Anakara",
                      )




                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height:30,
                      ),
                      SearchPageListTile(
                        isSecondTile:false,
                        labelText:"NEAREST AIRPOT",
                        subTitleText: "Dhaka international Airpot",
                        tailingText:"KHI",
                        titleText:"Dahaka,Bangladesh",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SearchPageListTile(
                        isSecondTile:false,
                        labelText:"PAST SEARCH",
                        subTitleText: "Jhon F Kennedy Intl Airport",
                        tailingText:"JFK",
                        titleText:"New York City,NY",
                      ),
                      SearchPageListTile(
                        isSecondTile: true,
                        labelText:"NEAREST AIRPOT",
                        subTitleText: "Ankara international Airpot",
                        tailingText:"TUR",
                        titleText:"Anakara",
                      )




                    ],
                  ),


                ]),
              ),
            ],
          ),
          resizeToAvoidBottomInset: false,
        ));
  }
}
