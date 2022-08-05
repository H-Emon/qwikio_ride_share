import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwikio_ride_share/const/color.dart';
import 'package:rxdart/rxdart.dart';
import '../profile_view_screen.dart';

class SideBar extends StatefulWidget {

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> with SingleTickerProviderStateMixin{
 late AnimationController _animationController;
 StreamController<bool>  isSidebarOpenedStreamController =StreamController();
late Stream<bool> isSidebarOpenedStream;
 late StreamSink<bool> isSidebarOpenedSink;
 final _animationDuration=const Duration(milliseconds:500);

@override
void initState(){
  super.initState();
  _animationController=AnimationController(vsync: this, duration:_animationDuration);
  isSidebarOpenedStream = PublishSubject<bool>();
  isSidebarOpenedStream=isSidebarOpenedStreamController.stream;
  isSidebarOpenedSink=isSidebarOpenedStreamController.sink;

}

@override
void dispose(){
  _animationController.dispose();
  isSidebarOpenedStreamController.close();
  isSidebarOpenedSink.close();
  super.dispose();

}

  void onIconPressed(){
  final animationStatus=_animationController.status;
  final isAnimationCompleted=animationStatus==AnimationStatus.completed;
  if(isAnimationCompleted){
    isSidebarOpenedSink.add(false);
    _animationController.reverse();
  }else{
    isSidebarOpenedSink.add(true);
    _animationController.forward();
  }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;




    return StreamBuilder<bool>(
      initialData:false,
      stream:isSidebarOpenedStream,
      builder:(context , isSidebarOpenedAsync){
        return AnimatedPositioned(
          duration:_animationDuration,
          top: 0,
          bottom:0,
          left:  isSidebarOpenedAsync.data! ?0:-screenWidth,
          right: isSidebarOpenedAsync.data! ? 0:screenWidth-45 ,
          child: Row(
            children: [
              Expanded(
                //flex:3,
                child: ProfileView(),
              ),
              Align(
                alignment:Alignment(0,-0.9),
                child: GestureDetector(
                  onTap:(){
                    onIconPressed();
                  },
                  child: Container(
                    width:35,
                    height:60,
                     decoration:BoxDecoration(
                       color:Colors.white,
                       borderRadius:BorderRadius.only(
                         topRight:Radius.circular(30),
                         bottomRight:Radius.circular(30),

                       )
                     ),
                    alignment:Alignment.center,
                    child:AnimatedIcon(
                      progress:_animationController.view,
                      icon:AnimatedIcons.menu_close,
                      color:mainColor,
                      size:25,
                    ),

                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
