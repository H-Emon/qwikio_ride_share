import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/screens/Drawer/Side%20Bar/sidebar_main_screen.dart';
import 'package:qwikio_ride_share/screens/Home%20Screen/main_home_page.dart';

class SidebarLayout extends StatelessWidget {
  const SidebarLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MainHomePage(),
          SideBar()

        ],
      ),
    );
  }
}
