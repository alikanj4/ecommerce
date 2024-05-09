import 'package:flutter/material.dart';

class ContainarEvaluation extends StatelessWidget {
  final String text;
  final String text2;
  final String overallevaluation;
  final String numberevaluation;
  const ContainarEvaluation(
      {super.key,
      required this.text,
      required this.text2,
      required this.overallevaluation,
      required this.numberevaluation});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          width: 160,
          height: 160,
          child: Column(children: [
            const Icon(Icons.person_outline_rounded, size: 40),
            Text(text2,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(overallevaluation)
          ])),
      Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          width: 160,
          height: 160,
          child: Column(children: [
            const Icon(Icons.star, size: 40),
            Text(text,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(numberevaluation)
          ])),
      const SizedBox(height: 20)
    ]);
  }
}
