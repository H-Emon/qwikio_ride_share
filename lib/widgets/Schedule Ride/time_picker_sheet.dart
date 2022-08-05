import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/color.dart';

class TimePickerSheet extends StatefulWidget {
  const TimePickerSheet({Key? key}) : super(key: key);

  @override
  State<TimePickerSheet> createState() => _TimePickerSheetState();
}

class _TimePickerSheetState extends State<TimePickerSheet> {
  Duration duration=Duration(hours:1,minutes: 5,seconds:30);
  DateTime dateTime=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
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

          SizedBox(
            height:400,
            child:CupertinoDatePicker(
              initialDateTime:dateTime,
              mode:CupertinoDatePickerMode.time,
              onDateTimeChanged:(_dateTime){
                setState((){
                  _dateTime=dateTime;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: (){},
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Schedule",style:TextStyle(fontSize:20,color:Colors.white),),
                  )),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pop();

                  },
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical:8),
                    child: Text(
                      "Back",style:TextStyle(fontSize:20,color:Colors.white),),
                  )),
            ],
          ),
          SizedBox(
            height:15,
          )



        ]);
  }
}
