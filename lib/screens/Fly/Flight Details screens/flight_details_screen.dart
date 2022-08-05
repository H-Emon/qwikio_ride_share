import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../const/color.dart';
import '../../../widgets/Fly/Flights Details/flights_details_schedule_widgets.dart';
import '../../../widgets/Fly/Flights Details/fligth_details_screen_tabview.dart';

class FlightDetails extends StatelessWidget {
  const FlightDetails({Key? key}) : super(key: key);

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
              "Fligth Booking",
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
                          "ONE WAY",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Tab(
                        child: Text("ROUND TRIP",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(children: [
                  FligthTabViewwidgets(),
                  FligthTabViewwidgets()
                ]),
              ),
            ],
          ),
          resizeToAvoidBottomInset: false,
        ));
  }
}
