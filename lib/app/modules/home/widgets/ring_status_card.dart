import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_smart_device_app/resource/app_images/app_images.dart';
import 'package:iot_smart_device_app/resource/style/custom_size.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../../../../resource/app_colors/App_Colors.dart';
import '../../../../resource/style/custom_style.dart';

class RingStatusCard extends StatelessWidget {
  const RingStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    title: 'Apple Smart Ring',
                    fontSize: 16,
                    color: AppColors.black100,
                    fontWeight: FontWeight.bold
                ),
                heightBox2,
                CustomText(
                    title: 'Connected' + ' | ' + 'Battery: 30%',
                    fontSize: 12,
                    color: AppColors.black100
                ),
              ],
            ),
          ),
          widthBox8,
          Image.asset(
              AppImages.appleRingImage,
              width: Get.width / 4
          ),
        ],
      ),
    );
  }
}
