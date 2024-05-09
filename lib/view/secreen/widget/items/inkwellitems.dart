import 'package:flutter/material.dart';

class InkWellItems extends StatelessWidget {
  final String text;
  final IconData icons;
  final void Function()? onTap;

  const InkWellItems(
      {super.key, required this.text, required this.icons, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.all(8),
            height: 80,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(icons, size: 35),
                  Text(text,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold))
                ])));
  }
}
