import 'package:get/get.dart';

import '../controllers/social_signal_controller.dart';

class SocialSignalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SocialSignalController>(
      () => SocialSignalController(),
    );
  }
}
