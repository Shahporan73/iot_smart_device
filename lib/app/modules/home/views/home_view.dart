import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/app/modules/home/widgets/home_prgress_widget.dart';
import 'package:iot_smart_device_app/app/modules/home/widgets/ring_status_card.dart';
import 'package:iot_smart_device_app/app/modules/home/widgets/signal_log_card.dart';
import 'package:iot_smart_device_app/resource/app_images/app_images.dart';
import 'package:iot_smart_device_app/resource/style/custom_size.dart';
import 'package:iot_smart_device_app/resource/style/custom_style.dart';

import '../../../../resource/app_colors/App_Colors.dart';
import '../../../../resource/widget/custom_text.dart';
import '../controllers/home_controller.dart';
import '../widgets/active_signal_card.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: CustomStyle.commonDecoration,
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                title: 'Welcome',
                fontSize: 14,
                color: AppColors.black100,
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                title: 'Mr. John Doe',
                fontSize: 16,
                color: AppColors.black100,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomePrgressWidget(),

                heightBox10,
                CustomText(
                  title: 'Active Signals',
                  fontSize: 18,
                  color: AppColors.black100,
                  fontWeight: FontWeight.bold,
                ),
                heightBox8,
                ActiveSignalCard(
                  title: 'Social Signal',
                  imagePath: AppImages.socialSignalIcon,
                  status: 'Delivered',
                ),
                heightBox8,
                ActiveSignalCard(
                  title: 'Self Signal',
                  imagePath: AppImages.selfSignalIcon,
                  status: 'Missed',
                ),
                heightBox8,
                ActiveSignalCard(
                  title: 'Edge Signal',
                  imagePath: AppImages.edgeSignalIcon,
                  status: 'Delivered',
                ),

                heightBox10,
                CustomText(
                  title: 'Signal Log',
                  fontSize: 18,
                  color: AppColors.black100,
                  fontWeight: FontWeight.bold,
                ),
                heightBox8,
                SignalLogCard(
                  time: '9:00 AM',
                  title: 'Social Signal',
                  imagePath: AppImages.socialSignalIcon,
                  status: 'Missed',
                ),
                heightBox8,
                SignalLogCard(
                  time: '10:00 AM',
                  title: 'Self Signal',
                  imagePath: AppImages.selfSignalIcon,
                  status: 'Delivered',
                ),
                heightBox8,
                SignalLogCard(
                  time: '8:45 AM',
                  title: 'Edge Signal',
                  imagePath: AppImages.edgeSignalIcon,
                  status: 'Missed',
                ),

                heightBox10,
                CustomText(
                  title: 'Ring Status',
                  fontSize: 18,
                  color: AppColors.black100,
                  fontWeight: FontWeight.bold,
                ),
                heightBox8,
                RingStatusCard(),

                heightBox20,

              ],
            ),
          ),
        ),
      ),
    );
  }
}
