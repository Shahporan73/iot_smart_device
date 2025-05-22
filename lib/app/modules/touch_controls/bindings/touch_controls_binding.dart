import 'package:get/get.dart';

import '../controllers/touch_controls_controller.dart';

class TouchControlsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TouchControlsController>(
      () => TouchControlsController(),
    );
  }
}
