import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/resource/app_colors/App_Colors.dart';
import 'package:iot_smart_device_app/resource/style/custom_style.dart';
import 'package:iot_smart_device_app/resource/widget/custom_button.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../../../../resource/app_images/app_images.dart';
import '../controllers/edge_signal_controller.dart';
import 'edge_signal_setup_view.dart';

class EdgeSignalView extends GetView<EdgeSignalController> {
  const EdgeSignalView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: Get.height,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: CustomStyle.commonDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.mainColor,
              radius: 40,
              child: Image.asset(
                AppImages.edgeSignalIcon,
                width: Get.width / 8,
                color: Colors.white,
              ),
            ),
            SizedBox(height: Get.height / 30),
            CustomText(
              title: 'Stay ahead while others drown in noise',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.black100,
            ),
            SizedBox(height: Get.height / 12),
            CustomButton(
              title: 'Start Setup',
              onTap: () {
                Get.to(() => EdgeSignalSetupView());
              },
            ),
            SizedBox(height: Get.height / 30),
            CustomButton(
              title: 'Skip',
              buttonColor: AppColors.whiteColor,
              titleColor: AppColors.black100,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
