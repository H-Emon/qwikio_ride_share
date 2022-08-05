import 'package:flutter/cupertino.dart';

import '../../../widgets/Ride/pickUp_location.dart';

class PickUpLocation extends StatefulWidget {
  const PickUpLocation({Key? key}) : super(key: key);

  @override
  State<PickUpLocation> createState() => _PickUpLocationState();
}

class _PickUpLocationState extends State<PickUpLocation> {
  @override
  Widget build(BuildContext context) {
    return  SearchLocation(
      title:"Pickup location",
      listNum:4
    );
  }
}
