import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resource/app_colors/App_Colors.dart';
import '../../../../resource/style/custom_size.dart';
import '../../../../resource/style/custom_style.dart';
import '../../../../resource/widget/custom_text.dart';

class SignalLogCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String status;
  final String time;
  const SignalLogCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.status, required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          CustomText(
            title: time,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.black100,
          ),
          widthBox8,
          CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xffEDF4FA),
            child: Image.asset(imagePath, width: Get.width / 12),
          ),
          widthBox10,
          CustomText(title: title, style: CustomStyle.label),
          Spacer(),
          CustomText(title: status, fontSize: 12, color: AppColors.black100),
        ],
      ),
    );
  }
}
