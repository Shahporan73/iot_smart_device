import 'package:get/get.dart';

import '../controllers/edge_signal_controller.dart';

class EdgeSignalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EdgeSignalController>(
      () => EdgeSignalController(),
    );
  }
}
