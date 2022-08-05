import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/const/color.dart';
import 'package:qwikio_ride_share/widgets/Schedule%20Ride/time_picker_sheet.dart';

class DatePickerBottom extends StatefulWidget {
  const DatePickerBottom({Key? key}) : super(key: key);

  @override
  State<DatePickerBottom> createState() => _DatePickerBottomState();
}

class _DatePickerBottomState extends State<DatePickerBottom> {
  DateTime selectedDate = DateTime.now();
  DateTime firstDate = DateTime(2010, 1);
  DateTime lastDate = DateTime(2023, 5);

  @override
  Widget build(BuildContext context) {
    return Column(
       mainAxisSize:MainAxisSize.min,
        children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Cancel ",
              style: TextStyle(
                  color: Colors.red, fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            width: 80,
          ),
          Text(
            "Schedule ",
            style: TextStyle(
                color: textColorGrey,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
      CalendarDatePicker(
        initialDate: selectedDate,
        firstDate: firstDate,
        lastDate: lastDate,
        onDateChanged: (onDateChanged) {},
      ),
      ElevatedButton(
          onPressed: (){
            Navigator.of(context).pop();
            showModalBottomSheet(context: (context),
                isScrollControlled:true,
                builder: (context)=> TimePickerSheet() );
          },
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Select date",style:TextStyle(fontSize:20,color:Colors.white),),
          )),
          SizedBox(
            height:15,
          )
      
      
      
    ]);
  }
}
