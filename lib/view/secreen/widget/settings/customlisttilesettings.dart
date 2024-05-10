import 'package:flutter/material.dart';

class CustomListTileSettings extends StatelessWidget {
  final Function()? changeTheme;
  final Function()? contectUS;
  final Function()? aboutTheApp;
  final Function()? updatenotificationkey;
  final Function()? openYourStoreNow;
  final Function()? logout;
  const CustomListTileSettings(
      {super.key,
      this.changeTheme,
      this.contectUS,
      this.aboutTheApp,
      this.updatenotificationkey,
      this.openYourStoreNow,
      this.logout});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
      ListTile(
          onTap: changeTheme,
          title: const Text("change the theme"),
          trailing: const Icon(Icons.color_lens_outlined)),
      const Divider(height: 2, color: Colors.grey),

      //=============================================================
      ListTile(
          onTap: contectUS,
          title: const Text("Contect US"),
          trailing: const Icon(Icons.phone_callback_sharp)),
      const Divider(height: 2, color: Colors.grey),

      //=============================================================

      ListTile(
          onTap: aboutTheApp,
          title: const Text("About the app"),
          trailing: const Icon(Icons.info_outline)),
      const Divider(height: 2, color: Colors.grey),

      //=============================================================

      ListTile(
          onTap: updatenotificationkey,
          title: const Text("Update notification key"),
          trailing: const Icon(Icons.notifications_none_outlined)),
      const Divider(height: 2, color: Colors.grey),

      //=============================================================

      ListTile(
          onTap: openYourStoreNow,
          title: const Text("Open your store now"),
          trailing: const Icon(Icons.shopping_bag_outlined)),
      const Divider(height: 2, color: Colors.grey),

      //=============================================================

      ListTile(
          onTap: logout,
          title: const Text("Logout"),
          trailing: const Icon(Icons.logout)),
    ]));
  }
}
