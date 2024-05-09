import 'package:ecomercekhaled/core/constant/themedata.dart';
import 'package:ecomercekhaled/core/services/servises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localecontroller extends GetxController {
  Locale? locale;
  MyServices myServices = Get.find();

  changLoacle(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  // ignore: non_constant_identifier_names
  ThemeData AppTheme = ThemeEnglish;

  @override
  void onInit() {
    String? sheradPrelang = myServices.sharedPreferences.getString("lang");
    if (sheradPrelang == "Ar") {
      // ignore: unrelated_type_equality_checks
      AppTheme = locale == "Ar" ? ThemeArabic : ThemeEnglish;
      Get.changeTheme(AppTheme);
      locale = const Locale("Ar");
    } else if (sheradPrelang == "En") {
      // ignore: unrelated_type_equality_checks
      AppTheme = locale == "En" ? ThemeEnglish : ThemeArabic;
      Get.changeTheme(AppTheme);
      locale = const Locale("En");
    } else {
      locale = Locale(Get.deviceLocale!.languageCode);
      AppTheme == ThemeEnglish;
    }

    super.onInit();
  }
}
