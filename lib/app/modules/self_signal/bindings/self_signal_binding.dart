import 'package:get/get.dart';

import '../controllers/self_signal_controller.dart';

class SelfSignalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelfSignalController>(
      () => SelfSignalController(),
    );
  }
}
