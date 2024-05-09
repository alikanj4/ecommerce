import 'package:ecomercekhaled/controller/homescreen_controller.dart';
import 'package:ecomercekhaled/view/secreen/widget/homescreen.dart/CustomAppBarBattom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  ...List.generate(
                      controller.listpage.length,
                      (index) => CustomAppBarBattom(
                          iconData: controller.textbuttomappbar[index]["icon"],
                          onPressed: () {
                            controller.currentPage(index);
                          },
                          avtive:
                              controller.currentpage == index ? true : false,
                          texttitle: controller.textbuttomappbar[index]
                              ["title"]))
                ])),
            body: controller.listpage.elementAt(controller.currentpage)));
  }
}
