import 'package:ecomercekhaled/view/secreen/home.dart';
import 'package:ecomercekhaled/view/secreen/order.dart';
import 'package:ecomercekhaled/view/secreen/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  currentPage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listpage = [
    const HomePage(),
    const Order(),
    const Settings(),
  ];
  List textbuttomappbar = [
    {"title": "الرئيسية", "icon": Icons.home},
    {"title": "الطلبات", "icon": Icons.message_outlined},
    {"title": "الاعدادات", "icon": Icons.settings},
  ];

  @override
  currentPage(int i) {
    currentpage = i;
    update();
  }
}
