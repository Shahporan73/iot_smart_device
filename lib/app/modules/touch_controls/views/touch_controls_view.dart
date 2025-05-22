import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/touch_controls_controller.dart';

class TouchControlsView extends GetView<TouchControlsController> {
  const TouchControlsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TouchControlsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TouchControlsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
