import 'package:dashbaord_ui/MainContent.dart';
import 'package:dashbaord_ui/leftSideBar.dart';
import 'package:dashbaord_ui/rightSideBar.dart';
import 'package:flutter/material.dart';

class DashboardUI extends StatelessWidget {
  const DashboardUI({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(

        children: [

          Expanded(
              flex: 9,
              child: LeftSideBar(),
          ),

          Expanded(
              flex: 28,
              child: Maincontent(),
          ),

          Expanded(
              flex: 12,
              child: Rightsidebar(),
          ),


        ],
      ),


    );

  }
}
