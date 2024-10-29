import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_layout/contoller/responsive_controller.dart';
import 'package:responsive_layout/pages/responsive_layout.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final ResponsiveController responsiveController =
      Get.put(ResponsiveController());
  //This Widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Responsive Screen Tutorial',
      home: Scaffold(
        body:  LayoutBuilder(builder: (context, constraints){
          responsiveController.updateScreenWidth(constraints.maxWidth);
          return ResponsiveLayout();
        }),
      ),
    );
  }
}

