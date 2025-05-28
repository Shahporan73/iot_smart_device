import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_smart_device_app/resource/app_images/app_images.dart';
import 'package:iot_smart_device_app/resource/style/custom_size.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../../../../resource/style/custom_style.dart';

class EdgeSetupCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback? onTap;
  const EdgeSetupCard({super.key, required this.imagePath, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
            CircleAvatar(
              radius: 22,
              backgroundColor: Color(0xffB7BEFF),
              child: Image.asset(imagePath, width: Get.width / 12,),
            ),
            widthBox10,
            CustomText(title: title, style: CustomStyle.label,),
          ],
        ),
      ),
    );
  }
}
