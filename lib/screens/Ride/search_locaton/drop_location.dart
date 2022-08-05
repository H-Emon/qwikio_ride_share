import 'package:flutter/cupertino.dart';

import '../../../widgets/Ride/pickUp_location.dart';

class DropoffLocation extends StatefulWidget {
  const DropoffLocation({Key? key}) : super(key: key);

  @override
  State<DropoffLocation> createState() => _DropoffLocationState();
}

class _DropoffLocationState extends State<DropoffLocation> {
  @override
  Widget build(BuildContext context) {
    return SearchLocation(
        title:"Dropoff location",
        listNum:4
    );
  }
}
