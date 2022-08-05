import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../const/color.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      //color: mainColor,
      child: Row(
        children: [
          Icon(
            Icons.account_balance_wallet,
            color: textColorGrey,
            size: 25,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "Add Credit / Debit Card",
            style: TextStyle(
                fontSize: 15,
                color: textColorGrey,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 80,
          ),
          Text(
            "Add / Edit",
            style: TextStyle(
                fontSize: 15,
                color: mainColor,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
