import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/resource/app_colors/App_Colors.dart';
import 'package:iot_smart_device_app/resource/style/custom_style.dart';
import 'package:iot_smart_device_app/resource/widget/custom_button.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../../../../resource/style/custom_size.dart';
import '../../../../resource/widget/RoundTextField.dart';

class CreateCustomSignalView extends GetView {
  const CreateCustomSignalView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: CustomStyle.commonDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height / 12),
            Center(
              child: CustomText(
                title: 'Define your self care signal',
                fontSize: 16,
                color: AppColors.black100,
                fontWeight: FontWeight.w500,
              ),
            ),

            heightBox20,
            CustomText(title: 'Name', style: CustomStyle.label),
            RoundTextField(
              hint: 'Enter name',
              isFocus: true,
              isBorder: true,
              filled: true,
              fillColor: Colors.white,
            ),
            heightBox10,

            CustomText(title: 'Time', style: CustomStyle.label),
            RoundTextField(
              hint: 'Enter time',
              isFocus: true,
              isBorder: true,
              filled: true,
              fillColor: Colors.white,
              onTap: () {

              },
            ),

            heightBox10,
            CustomText(title: 'Interval', style: CustomStyle.label),
            RoundTextField(
              hint: 'Enter interval',
              isFocus: true,
              isBorder: true,
              filled: true,
              fillColor: Colors.white,
            ),

            SizedBox(
              height: Get.height / 20,
            ),
            CustomButton(title: 'Submit', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
