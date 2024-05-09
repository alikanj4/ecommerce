import 'package:ecomercekhaled/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomListTileSettings extends StatelessWidget {
  const CustomListTileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    return Container(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
      ListTile(
          onTap: () {
            if (Get.isDarkMode) {
              Get.changeTheme(ThemeData.dark());
            } else {
              Get.changeTheme(ThemeData.light());
            }
          },
          title: const Text("change the theme"),
          trailing: const Icon(Icons.color_lens_outlined)),
      const Divider(height: 2, color: Colors.grey),
      ListTile(
          onTap: () {
            launchUrl(Uri.parse("tel:+878754131845"));
          },
          title: const Text("Contect US"),
          trailing: const Icon(Icons.phone_callback_sharp)),
      const Divider(height: 2, color: Colors.grey),
      ListTile(
          onTap: () {},
          title: const Text("About the app"),
          trailing: const Icon(Icons.info_outline)),
      const Divider(height: 2, color: Colors.grey),
      ListTile(
          onTap: () {},
          title: const Text("Update notification key"),
          trailing: const Icon(Icons.notifications_none_outlined)),
      const Divider(height: 2, color: Colors.grey),
      ListTile(
          onTap: () {},
          title: const Text("Open your store now"),
          trailing: const Icon(Icons.shopping_bag_outlined)),
      const Divider(height: 2, color: Colors.grey),
      ListTile(
          onTap: () {
            controller.logout();
          },
          title: const Text("Logout"),
          trailing: const Icon(Icons.logout)),
    ]));
  }
}
