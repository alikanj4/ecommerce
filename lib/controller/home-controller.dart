import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  gotoitemsrestaurant();
  gotonotification();
  gotoitemsecommerce();
}

class HomeControllerImp extends HomeController {
  List imagename = [ImageAsset.aova, ImageAsset.petiza];
  Map<dynamic, dynamic> name = {0: "AVON", 1: "PEITZA"};
  TextEditingController? serach;

  @override
  void onInit() {
    serach = TextEditingController();
    super.onInit();
  }

  @override
  gotoitemsrestaurant() {
    Get.toNamed(AppRoute.restusaunts);
  }

  @override
  gotonotification() {
    Get.toNamed(AppRoute.notification);
  }

  @override
  gotoitemsecommerce() {
    Get.toNamed(AppRoute.ecommerce);
  }
}
