import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/app/modules/self_signal/views/create_custom_signal_view.dart';
import 'package:iot_smart_device_app/resource/style/custom_size.dart';
import 'package:iot_smart_device_app/resource/widget/RoundTextField.dart';
import 'package:iot_smart_device_app/resource/widget/custom_button.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../../../../resource/app_colors/App_Colors.dart';
import '../../../../resource/style/custom_style.dart';

class PickASelfCareSignalView extends GetView {
  const PickASelfCareSignalView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: CustomStyle.commonDecoration,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: Get.height / 12),
              Center(
                child: CustomText(
                  title: 'Pick a self care signal',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black100,
                ),
              ),

              SizedBox(
                height: Get.height / 16,
              ),
              RoundTextField(
                  hint: '',
                readOnly: true,
                isFocus: false,
                controller: TextEditingController(text: 'Hydrate Hourly'),
                isBorder: true,
                filled: true,
                fillColor: Colors.white,
              ),
              heightBox10,
              RoundTextField(
                hint: '',
                readOnly: true,
                isFocus: false,
                controller: TextEditingController(text: 'Stand every 60 minutes'),
                isBorder: true,
                filled: true,
                fillColor: Colors.white,
              ),
              heightBox10,
              RoundTextField(
                hint: '',
                readOnly: true,
                isFocus: false,
                controller: TextEditingController(text: 'Deep work breaks'),
                isBorder: true,
                filled: true,
                fillColor: Colors.white,
              ),

              SizedBox(
                height: Get.height / 16,
              ),
              CustomButton(title: 'Create Custom',
                  onTap: (){
                Get.to(()=>CreateCustomSignalView());
                  }
              )


            ],
          ),
        ),
      ),
    );
  }
}
