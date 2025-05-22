import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edge_signal_controller.dart';

class EdgeSignalView extends GetView<EdgeSignalController> {
  const EdgeSignalView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EdgeSignalView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EdgeSignalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
