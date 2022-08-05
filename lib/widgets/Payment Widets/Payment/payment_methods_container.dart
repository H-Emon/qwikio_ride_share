import 'package:flutter/cupertino.dart';

import '../../../const/color.dart';

class AccountContainer extends StatelessWidget {
  final String imgUrl, acName;
  const AccountContainer({required this.imgUrl, required this.acName, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:40,vertical:5),
      child: Container(
        height: 80,

        child: Row(
          children: [
            Image.asset(
              imgUrl,
              height: 45,
              width: 50,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              acName,
              style: TextStyle(
                  fontSize: 18,
                  color: textColorGrey,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
