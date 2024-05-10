import 'package:flutter/material.dart';

class CustomListTileSettingsOne extends StatelessWidget {
  final String text;
  final IconData icons;
  final Function()? onTap;
  const CustomListTileSettingsOne(
      {super.key,
      required this.text,
      required this.icons,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(onTap: onTap, title: Text(text), trailing: Icon(icons)),
        const Divider(height: 2, color: Colors.grey),
      ],
    );
  }
}
