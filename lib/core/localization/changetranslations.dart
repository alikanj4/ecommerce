import 'package:ecomercekhaled/core/services/servises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localecontroller extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  changLoacle(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? shaerdprelang = myServices.sharedPreferences.getString('"lang');
    if (shaerdprelang == "Ar") {
      language = const Locale("Ar");
    } else if (shaerdprelang == "En") {
      language = const Locale("En");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
