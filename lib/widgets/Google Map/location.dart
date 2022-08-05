//AIzaSyB2l8BGVQPhtHyR7jj9MuOIfCWjGtSwAH8

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:qwikio_ride_share/const/color.dart';

class GooMapScreen extends StatefulWidget {
  const GooMapScreen({Key? key}) : super(key: key);

  @override
  State<GooMapScreen> createState() => _GooMapScreenState();
}

class _GooMapScreenState extends State<GooMapScreen> {
  final Completer<GoogleMapController> _controller=Completer();
  static const LatLng sourceLocation=LatLng(37.33500926,-122.03272188);
  static const LatLng destination=LatLng(37.33429383,-122.06600055);





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GoogleMap(
        initialCameraPosition:CameraPosition(
          target:sourceLocation,
          zoom:13.5,

        ),

        markers:{
          const Marker(
            markerId:MarkerId("source"),
            position:sourceLocation,
          ),
         const Marker(
            markerId:MarkerId("destination"),
            position:destination,
          )
        },
        mapType: MapType.normal,
        onMapCreated:(GoogleMapController controller){
          _controller.complete(controller);
        },

      ),
    );
  }
}
