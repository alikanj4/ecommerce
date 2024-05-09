import 'package:flutter/material.dart';

class InfoItems extends StatelessWidget {
  final String text;
  final IconData icons;
  final void Function()? onTap;
  const InfoItems(
      {super.key, required this.text, required this.icons, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            alignment: Alignment.center,
            height: 35,
            width: 100,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(icons, size: 28),
                  Text(text,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold))
                ])));
  }
}
