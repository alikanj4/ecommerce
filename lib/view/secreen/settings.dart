import 'package:ecomercekhaled/controller/settings_controller.dart';
import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/view/secreen/widget/settings/customlangsettings.dart';
import 'package:ecomercekhaled/view/secreen/widget/settings/customlisttilesettings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _Statesettings();
}

class _Statesettings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());

    return Scaffold(
        key: controller.formstate,
        body: ListView(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(00),
            child: Image.asset(ImageAsset.kol),
          ),
          Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(12),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                //================================================

                ListTile(
                    onTap: () {
                      controller.gotoprofile();
                    },
                    title: const Text("Profile "),
                    trailing: const Icon(Icons.person_2_outlined)),
                const Divider(height: 2, color: Colors.grey),

                //================================================

                ListTile(
                    onTap: () {},
                    title: const Text("Adrees"),
                    trailing: const Icon(Icons.location_on_outlined)),
                const Divider(height: 2, color: Colors.grey),

                //================================================

                MaterialButton(
                    onPressed: () {
                      controller.formstate.currentState!.showBottomSheet(
                          (context) => Container(
                              width: 2200,
                              height: 300,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30)),

                              //================================================

                              child: CustomLangSettings(
                                changetoArabic: () {},
                                changetoEnglish: () {},
                                changetoturka: () {},
                              )));
                    },
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("change the language"),
                          Row(children: [
                            Icon(Icons.language),
                          ])
                        ])),

                //================================================

                const Divider(height: 2, color: Colors.grey),

                //================================================

                const CustomListTileSettings()
              ]))
        ]));
  }
}
