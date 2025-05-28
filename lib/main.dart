import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iot_smart_device_app/app/modules/dashboard/views/dashboard_view.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Iot Smart Device App",
      debugShowCheckedModeBanner: false,
      // initialRoute: AppPages.INITIAL,
      // getPages: AppPages.routes,
      home: DashboardView(),
    ),
  );
}
