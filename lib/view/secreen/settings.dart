import 'package:ecomercekhaled/controller/settings_controller.dart';
import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:ecomercekhaled/core/localization/changetranslations.dart';
import 'package:ecomercekhaled/view/secreen/widget/settings/customlangsettings.dart';
import 'package:ecomercekhaled/view/secreen/widget/settings/customlisttilesettings.dart';
import 'package:ecomercekhaled/view/secreen/widget/settings/customlisttilesettingsone.dart';
import 'package:ecomercekhaled/view/secreen/widget/settings/customthemeSettings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

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
              child: Image.asset(ImageAsset.kol)),
          Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(12),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                //================================================
                CustomListTileSettingsOne(
                    text: "profile",
                    icons: Icons.person_2_outlined,
                    onTap: () {
                      controller.gotoprofile();
                    }),

                //================================================

                CustomListTileSettingsOne(
                    text: "Adrees",
                    icons: Icons.location_on_outlined,
                    onTap: () {
                      Get.toNamed(AppRoute.location);
                    }),

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

                              child: GetBuilder<Localecontroller>(
                                  builder: (controller) => CustomLangSettings(
                                        changetoArabic: () {
                                          controller.changLoacle("ar");
                                        },
                                        changetoEnglish: () {
                                          controller.changLoacle("en");
                                        },
                                        changetoturka: () {},
                                      ))));
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

                MaterialButton(
                    onPressed: () {
                      controller.formstate.currentState!.showBottomSheet(
                          (context) => Container(
                              width: 2200,
                              height: 330,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30)),

                              //================================================

                              child: GetBuilder<Localecontroller>(
                                  builder: (controller) => CustomThemeSettings(
                                        changetodark: () {
                                          Get.changeTheme(ThemeData.dark());
                                        },
                                        changetoligth: () {
                                          Get.changeTheme(ThemeData.light());
                                        },
                                        changetosystem: () {},
                                      ))));
                    },
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("change the theme"),
                          Row(children: [
                            Icon(Icons.mode_night_outlined),
                          ])
                        ])),

                CustomListTileSettings(
                  aboutTheApp: () {
                    Get.toNamed(AppRoute.abouttheapp);
                  },
                  contectUS: () {
                    launchUrl(Uri.parse("tel:+878754131845"));
                  },
                  openYourStoreNow: () {
                    Get.toNamed(AppRoute.yourStore);
                  },
                  updatenotificationkey: () {},
                  logout: () {
                    controller.logout();
                  },
                )
              ]))
        ]));
  }
}
