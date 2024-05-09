import 'package:flutter/material.dart';

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
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text("تغير اللغة",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        Column(
          children: [
            const SizedBox(height: 30),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 30,
                child: InkWell(
                    onTap: changetoArabic,
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Arabic",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Icon(Icons.flag, size: 30)
                        ]))),
            const Divider(height: 3, color: Colors.grey),
            const SizedBox(height: 30),

            //====================================================

            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 30,
                child: InkWell(
                  onTap: changetoturka,
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(" Turkea ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        Icon(Icons.flag, size: 30)
                      ]),
                )),
            const Divider(height: 3, color: Colors.grey),
            const SizedBox(height: 30),

            //====================================================

            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 30,
                child: InkWell(
                    onTap: changetoEnglish,
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(" English ",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Icon(Icons.flag, size: 30)
                        ]))),
            const Divider(height: 3, color: Colors.grey),
          ],
        )
      ],
    );
  }
}
