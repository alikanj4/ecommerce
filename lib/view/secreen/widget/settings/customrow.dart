import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String namerow;
  final IconData icon;
  const CustomRow({
    super.key,
    required this.namerow,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(5),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(namerow,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(width: 20),
            Icon(icon, size: 35)
          ])),
    ]);
  }
}
