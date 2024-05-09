import 'package:flutter/material.dart';

class Continer2 extends StatelessWidget {
  final String name;
  final IconData icondata;
  final String history;
  const Continer2(
      {super.key,
      required this.name,
      required this.icondata,
      required this.history});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        height: 250,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Column(children: [
          Container(
              alignment: Alignment.topLeft,
              child: Text(name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold))),
          const SizedBox(height: 20),
          Row(children: [...List.generate(5, (index) => Icon(icondata))]),
          const SizedBox(height: 20),
          Container(alignment: Alignment.bottomLeft, child: Text(history))
        ]));
  }
}
