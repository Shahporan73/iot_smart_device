import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/app/modules/social_signal/views/main_social_signal_view.dart';
import 'package:iot_smart_device_app/app/modules/social_signal/widget/vibration_card.dart';
import 'package:iot_smart_device_app/resource/style/custom_size.dart';
import 'package:iot_smart_device_app/resource/widget/custom_button.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../../../../resource/app_colors/App_Colors.dart';
import '../widget/show_color_sheet.dart';

class AssignVibrationView extends GetView {
  const AssignVibrationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: Get.height / 12),
              Center(
                child: CustomText(
                  title: 'Assign a vibration pattern',
                  fontSize: 16,
                  color: AppColors.black100,
                ),
              ),
              heightBox14,
              VibrationCard(
                title: '3 Vibrations',
                isThreeVibration: true,
                isManyVibration: false,
                isLongVibration: false,
                onTap: () async{
                  final selectedIndices = await ShowColorSheetDialog.show(context);
                  if (selectedIndices != null && selectedIndices.isNotEmpty) {
                    print('Selected colors: $selectedIndices');
                  }
                },
              ),
              heightBox10,
              VibrationCard(
                title: '1 Long Vibrations',
                isThreeVibration: false,
                isManyVibration: false,
                isLongVibration: true,
                onTap: () async{
                  final selectedIndices = await ShowColorSheetDialog.show(context);
                  if (selectedIndices != null && selectedIndices.isNotEmpty) {
                    print('Selected colors: $selectedIndices');
                  }
                },
              ),

              heightBox10,
              VibrationCard(
                title: 'Many Minute Vibrations',
                isThreeVibration: false,
                isLongVibration: false,
                isManyVibration: true,
                onTap: () async{
                  final selectedIndices = await ShowColorSheetDialog.show(context);
                  if (selectedIndices != null && selectedIndices.isNotEmpty) {
                    print('Selected colors: $selectedIndices');
                  }
                },
              ),

              SizedBox(
                height: Get.height / 12,
              ),
              CustomButton(
                  title: 'Confirm',
                  onTap: () {
                    Get.to(()=>MainSocialSignalView());
                  },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
