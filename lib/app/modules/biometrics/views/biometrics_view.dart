import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/biometrics_controller.dart';

class BiometricsView extends GetView<BiometricsController> {
  const BiometricsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BiometricsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BiometricsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
