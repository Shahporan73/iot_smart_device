import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/app/modules/on-boarding/views/ring_connection_view.dart';
import 'package:iot_smart_device_app/resource/app_images/app_images.dart';
import 'package:iot_smart_device_app/resource/style/custom_style.dart';
import 'package:iot_smart_device_app/resource/style/spacing.dart';
import 'package:iot_smart_device_app/resource/widget/custom_button.dart';

class WelcomeView extends GetView {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff84B3DE), Color(0xFFFBFBFF)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: Get.height / 7),

            Image.asset(
              AppImages.welcomeImage,
              height: Get.height / 2.5,
              width: Get.width,
            ),

            ResponsiveSpacing(context).heightBox(0.01),

            Center(
              child: Text(
                'In a world of noise.\nSignals become everything',
                style: CustomStyle.title,
                textAlign: TextAlign.center,
              ),
            ),

            ResponsiveSpacing(context).heightBox(0.04),

            Center(
              child: Image.asset(
                AppImages.doubleCircleIcon,
                width: Get.width / 6,
              ),
            ),

            ResponsiveSpacing(context).heightBox(0.04),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomButton(
                title: 'Start Curating',
                onTap: () {
                  Get.to(() => RingConnectionView());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
