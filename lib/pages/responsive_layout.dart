import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:responsive_layout/pages/mobile_layout.dart';
import 'package:responsive_layout/pages/tablet_layout.dart';
import '../contoller/responsive_controller.dart';

class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout({super.key});

  final ResponsiveController responsiveController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (responsiveController.isMobile()) {
        return MobileLayout();
      } else {
        return TabletLayout();
      }
    });
  }
}
