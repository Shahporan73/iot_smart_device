import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_smart_device_app/app/modules/social_signal/views/assign_vibration_view.dart';
import 'package:iot_smart_device_app/resource/app_images/app_images.dart';
import 'package:iot_smart_device_app/resource/style/custom_size.dart';
import 'package:iot_smart_device_app/resource/style/spacing.dart';
import 'package:iot_smart_device_app/resource/widget/custom_button.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../../../../resource/app_colors/App_Colors.dart';

class ConnectionPendingView extends StatefulWidget {
  const ConnectionPendingView({super.key});

  @override
  State<ConnectionPendingView> createState() => _ConnectionPendingViewState();
}

class _ConnectionPendingViewState extends State<ConnectionPendingView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  // Track connection status
  bool _connected = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();

    // Simulate connection delay of 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _connected = true;
        _controller.stop();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: _connected
                  ? Icon(Icons.check_circle, color: AppColors.btnColor, size: Get.width / 6)
                  : RotationTransition(
                turns: _controller,
                child: Image.asset(AppImages.hourglass, width: Get.width / 6),
              ),
            ),
            heightBox10,
            CustomText(
              title: _connected ? 'Connection Confirmed' : 'Connection Pending...',
              fontSize: 16,
              fontWeight: _connected? FontWeight.bold : FontWeight.w400,
              color:_connected? AppColors.btnColor: AppColors.black100,
            ),
            heightBox10,
            CustomText(
              title: _connected
                  ? 'You’re now connected with Ziaul'
                  : 'We’ll notify you when they accept.',
              fontSize: 16,
              color: AppColors.black100,
            ),
            ResponsiveSpacing(context).heightBox(0.2),
            CustomButton(title: 'Assign Vibration & Color',
                onTap: () {
              Get.to(()=>AssignVibrationView(), transition: Transition.downToUp);
                }
            ),
          ],
        ),
      ),
    );
  }
}

