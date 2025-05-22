import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/app/modules/self_signal/views/pick_a_self_care_signal_view.dart';

import '../../../../resource/app_colors/App_Colors.dart';
import '../../../../resource/app_images/app_images.dart';
import '../../../../resource/style/custom_style.dart';
import '../../../../resource/widget/custom_button.dart';
import '../../../../resource/widget/custom_text.dart';
import '../../social_signal/views/connection_pending_view.dart';
import '../../social_signal/widget/share_dialog_widget.dart';
import '../controllers/self_signal_controller.dart';

class SelfSignalView extends GetView<SelfSignalController> {
  const SelfSignalView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: CustomStyle.commonDecoration,
        child: Padding(
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
                    AppImages.selfSignalIcon,
                    color: Colors.white,
                    width: Get.width / 8,
                  ),
                ),
              ),
              SizedBox(height: Get.height / 20),

              CustomText(
                title: 'Protect your time and energy. Program reminders you want to feel.',
                color: AppColors.black100,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Get.height / 8),
              CustomButton(
                  title: 'Start Setup',
                  onTap: () {
                    Get.to(()=>PickASelfCareSignalView());
                  }
              ),
              SizedBox(height: Get.height / 40),
              CustomButton(
                  title: 'Skip',
                  buttonColor: Colors.white,
                  titleColor: AppColors.black100,
                  fontSize: 18,
                  onTap: () {
                    // Get.to(()=>PickASelfCareSignalView());
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
