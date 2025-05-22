import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/app/modules/social_signal/views/connection_pending_view.dart';
import 'package:iot_smart_device_app/resource/app_colors/App_Colors.dart';
import 'package:iot_smart_device_app/resource/app_images/app_images.dart';
import 'package:iot_smart_device_app/resource/style/spacing.dart';
import 'package:iot_smart_device_app/resource/widget/custom_button.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../controllers/social_signal_controller.dart';
import '../widget/share_dialog_widget.dart';

class SocialSignalView extends GetView<SocialSignalController> {
  const SocialSignalView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: AppColors.btnColor,
                radius: 40,
                child: Image.asset(
                  AppImages.socialSignalIcon,
                  color: Colors.white,
                  width: Get.width / 8,
                ),
              ),
            ),
            SizedBox(height: Get.height / 20),

            CustomText(
              title: 'Feel the moment with  someone who matter \nOr\njoin a Permeable Network',
              color: AppColors.black100,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: Get.height / 30),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => ShareDialog(shareLink: 'https://www.google.com'),
                );
              },
              child: CustomText(
                title: '1:1 Signal',
                color: AppColors.btnColor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: Get.height / 16),
            CustomButton(
                title: 'Permeable Network',
                onTap: () {
                  Get.to(()=>ConnectionPendingView());
                }
            ),
            SizedBox(height: Get.height / 40),
            CustomButton(
                title: 'Skip',
                buttonColor: Colors.white,
                titleColor: AppColors.black100,
                fontSize: 18,
                onTap: () {}
            ),
          ],
        ),
      ),
    );
  }
}
