import 'package:ecomercekhaled/core/localization/changetranslations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomLangSettings extends StatelessWidget {
  final void Function()? changetoArabic;
  final void Function()? changetoEnglish;
  final void Function()? changetoturka;
  const CustomLangSettings(
      {super.key,
      this.changetoArabic,
      this.changetoEnglish,
      this.changetoturka});

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
          const Text("تغير اللغة",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          GetBuilder<Localecontroller>(
              builder: (controller) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 30,
                  child: MaterialButton(
                      onPressed: changetoArabic,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Arabic",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Icon(Icons.flag, size: 30)
                        ],
                      )))),
          const Divider(height: 3, color: Colors.grey),
          const SizedBox(height: 30),

          //====================================================

          GetBuilder<Localecontroller>(
              builder: (controller) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 30,
                  child: MaterialButton(
                      onPressed: changetoturka,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Turkea",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Icon(Icons.flag, size: 30)
                        ],
                      )))),
          const Divider(height: 3, color: Colors.grey),
          const SizedBox(height: 30),

          //====================================================
          GetBuilder<Localecontroller>(
              builder: (controller) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 30,
                  child: MaterialButton(
                      onPressed: changetoEnglish,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("English",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Icon(Icons.flag, size: 30)
                        ],
                      )))),
          const Divider(height: 3, color: Colors.grey),
        ],
      ),
    );
  }
}
