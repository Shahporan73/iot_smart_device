import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../resource/app_colors/App_Colors.dart';
import '../../../../resource/app_images/app_images.dart';
import '../../../../resource/style/custom_size.dart';
import '../../../../resource/style/custom_style.dart';
import '../../../../resource/widget/custom_button.dart';
import '../../../../resource/widget/custom_text.dart';
import '../../social_signal/views/assign_vibration_view.dart';

class ConnectionConfirmEdgeSignalView extends GetView {
  const ConnectionConfirmEdgeSignalView({super.key});
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
              title: 'You’re now connected with Edge Signal',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.black100,
            ),

            SizedBox(height: Get.height / 8),
            CustomButton(
                title: 'Assign Vibration & Color',
                onTap: (){
                  Get.to(()=>AssignVibrationView(signalType: 'edge',));
                }
            )
          ],
        ),
      ),
    );
  }
}
