import 'package:flutter/material.dart';

class CustomStackHome1 extends StatelessWidget {
  final String image;
  final String text;
  const CustomStackHome1({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      Image.asset(image, width: 380),

      //========================================================

      Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 30,
          width: 370,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.9),
              borderRadius: BorderRadius.circular(10)),
          child: Text(text,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 20,
              )))
    ]);
  }
}
