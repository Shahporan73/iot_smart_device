import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/app/modules/social_signal/views/assign_vibration_view.dart';
import 'package:iot_smart_device_app/resource/app_images/app_images.dart';
import 'package:iot_smart_device_app/resource/style/custom_size.dart';
import 'package:iot_smart_device_app/resource/widget/custom_button.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../../../../resource/app_colors/App_Colors.dart';
import '../../../../resource/style/custom_style.dart';

class ConnectionConfirmSelfSignalView extends GetView {
  const ConnectionConfirmSelfSignalView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: Get.height,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: CustomStyle.commonDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                AppImages.selfSignalIcon,
                width: Get.width / 5,
              ),
            ),

            SizedBox(height: Get.height / 30),
            CustomText(
              title: 'Connection Confirmed',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.mainColor,
            ),
            heightBox8,
            CustomText(
              title: 'You’re now connected with Self Signal',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.black100,
            ),

            SizedBox(height: Get.height / 8),
            CustomButton(
                title: 'Assign Vibration & Color',
                onTap: (){
                  Get.to(()=>AssignVibrationView(signalType: 'self',));
                }
            )
          ],
        ),
      ),
    );
  }
}
