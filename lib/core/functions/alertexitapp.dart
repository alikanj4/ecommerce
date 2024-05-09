import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertexitapp() {
  Get.defaultDialog(
      title: "تنبيه",
      middleText: "هل تريد الخروج من التطبيق ",
      actions: [
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text("Cansel"),
        ),
        ElevatedButton(
          onPressed: () {
            exit(0);
          },
          child: const Text("confrim"),
        ),
      ]);
  return Future.value(true);
}
