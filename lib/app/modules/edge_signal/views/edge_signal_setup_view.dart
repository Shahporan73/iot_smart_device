import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/app/modules/edge_signal/widgets/edge_setup_card.dart';
import 'package:iot_smart_device_app/resource/app_images/app_images.dart';
import 'package:iot_smart_device_app/resource/style/custom_size.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../../../../resource/app_colors/App_Colors.dart';
import '../../../../resource/style/custom_style.dart';
import 'connection_confirm_edge_signal_view.dart';

class EdgeSignalSetupView extends GetView {
  const EdgeSignalSetupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: Get.height,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: CustomStyle.commonDecoration,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: Get.height / 15),

              CustomText(
                title: 'Pick a self care signal',
                fontSize: 16,
                color: AppColors.black100,
              ),
              SizedBox(
                height: Get.height / 25,
              ),

              EdgeSetupCard(
                title: 'Google',
                imagePath: AppImages.googleIcon,
                onTap: () => Get.to(() => ConnectionConfirmEdgeSignalView()),
              ),
              heightBox8,
              EdgeSetupCard(
                title: 'Google Calendar',
                imagePath: AppImages.calenderIcon,
              ),

              heightBox8,
              EdgeSetupCard(
                title: 'Stack',
                imagePath: AppImages.stackIcon,
              ),

              heightBox8,
              EdgeSetupCard(
                title: 'News',
                imagePath: AppImages.newsIcon,
              ),

              heightBox8,
              EdgeSetupCard(
                title: 'Facebook',
                imagePath: AppImages.facebookIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
