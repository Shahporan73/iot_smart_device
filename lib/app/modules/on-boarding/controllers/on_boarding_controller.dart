import 'package:get/get.dart';
import 'package:iot_smart_device_app/app/modules/on-boarding/views/welcome_view.dart';

class OnBoardingController extends GetxController {
  //TODO: Implement OnBoardingController
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAll(()=>WelcomeView());
    });
  }
}
