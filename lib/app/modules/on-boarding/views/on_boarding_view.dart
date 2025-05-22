import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/resource/app_images/app_images.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(AppImages.onBoardingOne, width: Get.width / 1.3,),
      ),
    );
  }
}
