import 'package:flutter/material.dart';

class TextRest extends StatelessWidget {
  final String text;
  final double numberfont;
  const TextRest({super.key, required this.text, required this.numberfont});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(text,
            style:
                TextStyle(fontSize: numberfont, fontWeight: FontWeight.bold)));
  }
}
