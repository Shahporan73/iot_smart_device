import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/resource/widget/custom_button.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../../../../resource/app_colors/App_Colors.dart';
import '../../../../resource/style/custom_size.dart';
import '../widget/pulsating_circle.dart';

class MainSocialSignalView extends GetView {
  const MainSocialSignalView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CustomText(
                title: 'Social Signal Setup',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.mainColor,
              ),
            ),
            heightBox10,
            Center(
              child: CustomText(
                title: 'This is what it’ll feel like.',
                fontSize: 16,
                color: AppColors.black100,
              ),
            ),
            //   animation
            SizedBox(height: Get.height / 12),
            const PulsatingCircle(),
            SizedBox(
              height: Get.height / 8,
            ),
            CustomButton(
                title: 'Feel Social signal',
                buttonColor: Color(0xffD9E7F5),
                titleColor: AppColors.blackColor,
                onTap: () {},
            ),

            SizedBox(height: Get.height / 22),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    title: 'Modify',
                    buttonColor: Color(0xffEDEFF2),
                    titleColor: AppColors.blackColor
                    ,
                    onTap: () {},
                  ),
                ),
                widthBox10,
                Expanded(
                  child: CustomButton(
                    title: 'Confirm & Active',
                    onTap: () {},
                  ),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}
