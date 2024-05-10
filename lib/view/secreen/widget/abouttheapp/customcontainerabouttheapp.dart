import 'package:flutter/material.dart';

class CustomContainerAboutTheApp extends StatelessWidget {
  final String text;
  final String image;
  const CustomContainerAboutTheApp(
      {super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        width: 175,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Image.asset(image, height: 45),
          Text(text,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
        ]));
  }
}
