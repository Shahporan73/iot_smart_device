import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_smart_device_app/resource/app_colors/App_Colors.dart';
import 'package:iot_smart_device_app/resource/style/custom_size.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../../../../resource/app_images/app_images.dart';

class SignalSetupCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const SignalSetupCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xFFEDF4FA),
              radius: 40,
              child: Image.asset(
                icon,
                width: Get.width / 8,
              ),
            ),
            widthBox15,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  title: title,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 2),
                CustomText(
                  title: subtitle,
                  fontSize: 14,
                  color: AppColors.black100,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
