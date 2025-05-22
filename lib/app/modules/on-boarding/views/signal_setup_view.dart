import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/app/modules/edge_signal/views/edge_signal_view.dart';
import 'package:iot_smart_device_app/app/modules/on-boarding/widget/signal_setup_card.dart';
import 'package:iot_smart_device_app/app/modules/self_signal/views/self_signal_view.dart';
import 'package:iot_smart_device_app/app/modules/social_signal/views/social_signal_view.dart';
import 'package:iot_smart_device_app/resource/app_colors/App_Colors.dart';
import 'package:iot_smart_device_app/resource/style/custom_size.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../../../../resource/app_images/app_images.dart';
import '../../../../resource/style/custom_style.dart';

class SignalSetupView extends GetView {
  const SignalSetupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: CustomStyle.commonDecoration,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: Get.height / 12),
              Center(
                child: CustomText(
                  title: 'Let’s Get Ahead of The Noise',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black100,
                ),
              ),
              SizedBox(height: Get.height / 22),
              SignalSetupCard(
                onTap: () {
                  Get.to(()=>SocialSignalView(), transition: Transition.downToUp);
                },
                icon: AppImages.socialSignalIcon,
                title: 'Signal Setup',
                subtitle: 'Custom',
              ),
              heightBox10,
              SignalSetupCard(
                onTap: () {
                  Get.to(()=>SelfSignalView(), transition: Transition.downToUp);
                },
                icon: AppImages.selfSignalIcon,
                title: 'Self Signal',
                subtitle: 'Intention',
              ),
              heightBox10,
              SignalSetupCard(
                onTap: () {
                  Get.to(()=>EdgeSignalView(), transition: Transition.downToUp);
                },
                icon: AppImages.edgeSignalIcon,
                title: 'Edge Signal',
                subtitle: 'Context Suggest',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
