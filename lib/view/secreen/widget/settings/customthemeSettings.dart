import 'package:ecomercekhaled/core/localization/changetranslations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomThemeSettings extends StatelessWidget {
  final void Function()? changetodark;
  final void Function()? changetoligth;
  final void Function()? changetosystem;
  const CustomThemeSettings(
      {super.key, this.changetodark, this.changetoligth, this.changetosystem});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 15),
              height: 5,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(5))),
          const SizedBox(height: 20),
          const Text("تغير الثيم ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          GetBuilder<Localecontroller>(
              builder: (controller) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 30,
                  child: MaterialButton(
                      onPressed: changetosystem,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("الوضع التلقائي ",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Icon(Icons.settings_system_daydream_rounded, size: 30)
                        ],
                      )))),
          const SizedBox(height: 5),

          const Divider(height: 3, color: Colors.grey),
          const SizedBox(height: 30),

          //====================================================

          GetBuilder<Localecontroller>(
              builder: (controller) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 30,
                  child: MaterialButton(
                      onPressed: changetoligth,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("الوضع النهاري ",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Icon(Icons.light_mode, size: 30)
                        ],
                      )))),
          const SizedBox(height: 5),

          const Divider(height: 3, color: Colors.grey),
          const SizedBox(height: 30),

          //====================================================
          GetBuilder<Localecontroller>(
              builder: (controller) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 30,
                  child: MaterialButton(
                      onPressed: changetodark,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("الوضع الليلي",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Icon(Icons.dark_mode, size: 30)
                        ],
                      )))),
          const SizedBox(height: 5),
          const Divider(height: 3, color: Colors.grey),
        ],
      ),
    );
  }
}
