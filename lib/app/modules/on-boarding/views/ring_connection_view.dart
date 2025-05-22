import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/app/modules/on-boarding/views/signal_setup_view.dart';
import 'package:iot_smart_device_app/resource/app_colors/App_Colors.dart';
import 'package:iot_smart_device_app/resource/app_images/app_images.dart';
import 'package:iot_smart_device_app/resource/style/spacing.dart';
import 'package:iot_smart_device_app/resource/widget/custom_button.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

class RingConnectionView extends GetView {
  const RingConnectionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset(AppImages.ringIcon, width: Get.width / 4),
          ),
          ResponsiveSpacing(context).heightBox(0.02),
          CustomText(
            title: 'Connect your ring',
            fontSize: 18,
            color: AppColors.black100,
          ),
          ResponsiveSpacing(context).heightBox(0.1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomButton(title: 'Start Curating',
                onTap: () {
              Get.to(()=>SignalSetupView());
                }
            ),
          ),

          ResponsiveSpacing(context).heightBox(0.02),
          CustomButton(
            title: 'Skip',
            fontSize: 18,
            buttonColor: Colors.white,
            titleColor: AppColors.black100,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
