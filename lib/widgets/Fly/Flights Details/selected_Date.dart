import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/const/color.dart';
import 'package:qwikio_ride_share/widgets/Fly/Flights%20Details/passengers_num_widgets.dart';

class DateSelectBottomSheetWidget extends StatefulWidget {
  const DateSelectBottomSheetWidget({Key? key}) : super(key: key);

  @override
  State<DateSelectBottomSheetWidget> createState() =>
      _DateSelectBottomSheetWidgetState();
}

class _DateSelectBottomSheetWidgetState
    extends State<DateSelectBottomSheetWidget> {
  DateTime selectDateTime = DateTime.now();
  final firstDate = DateTime(2010, 1);
  final lastDate = DateTime(2022, 9);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Cancel",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                    fontWeight: FontWeight.w400)),
            SizedBox(
              width: 90,
            ),
            Text("Select Travel Date",
                style: TextStyle(
                    fontSize: 18,
                    color: textColorGrey,
                    fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "16 Feb",style:TextStyle(
              fontSize:15,
              color:textColorGrey,
            ),),
            Text(
              "Fare may vary based on dates",style:TextStyle(
              fontSize:12,
              color:textColorGrey,
            ),)
          ],
        ),
        CalendarDatePicker(
            initialDate: selectDateTime,
            firstDate: firstDate,
            lastDate: lastDate,
            onDateChanged: (date) {
              selectDateTime = date;
            }),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            showModalBottomSheet(
                isScrollControlled:true,
                context: (context),
                builder: (context)=>PassengersNum()
            );

          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 15.0, vertical: 12),
            child: Text(
              "Select Date",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),

        ),
        SizedBox(
          height: 20,
        ),

      ],
    );
  }
}
