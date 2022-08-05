import 'package:flutter/cupertino.dart';

import '../../../const/color.dart';

class ScheduleContainer extends StatelessWidget {
  final String dateText,amountText;
  const ScheduleContainer({
    required this.dateText,
    required this.amountText,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:70,
      width:72,
      margin:EdgeInsets.all(2),

      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
           dateText,
            style: TextStyle(
                fontSize: 14, color: textColorGrey, fontWeight: FontWeight.bold),
          ),
          Text(
           amountText,
            style: TextStyle(
                fontSize: 14, color: textColorGrey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
