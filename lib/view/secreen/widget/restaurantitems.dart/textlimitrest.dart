import 'package:flutter/material.dart';

class TextLimitRest extends StatelessWidget {
  final String text;
  final Color colors;
  const TextLimitRest({
    super.key,
    required this.text,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 15),
      Container(
          alignment: Alignment.center,
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: colors),
          child: Text(text,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      const SizedBox(height: 20)
    ]);
  }
}
