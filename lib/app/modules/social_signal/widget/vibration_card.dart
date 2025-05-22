import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_smart_device_app/resource/app_colors/App_Colors.dart';

import '../../../../resource/style/custom_size.dart';
import '../../../../resource/widget/custom_text.dart';

class VibrationCard extends StatelessWidget {
  final bool isThreeVibration;
  final bool isLongVibration;
  final bool isManyVibration;
  final String title;
  final VoidCallback onTap;
  const VibrationCard({
    super.key,
    required this.isThreeVibration,
    required this.isLongVibration,
    required this.isManyVibration,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
        child: Column(
          children: [
            isThreeVibration? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  margin: EdgeInsets.only(right: 5),
                  child: CircleAvatar(
                    backgroundColor: AppColors.btnColor,
                    radius: 20,
                  ),
                );
              }),
            ):SizedBox(),

            isLongVibration?Container(
              width: Get.width / 2.8,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: AppColors.btnColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ):SizedBox(),

            isManyVibration?Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(9, (index) {
                return Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Container(
                    height: Get.height / 22,
                    width: Get.width / 40,
                    decoration: BoxDecoration(
                      color: AppColors.btnColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                );
              }),
            ):SizedBox(),

            heightBox14,
            CustomText(
              title: title,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.black100,
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xffF9FAFD),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Color(0xffEAECF0), width: 0.5),
              ),
              child: CustomText(
                title: 'Choose Color',
                fontSize: 12,
                color: AppColors.black100,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
