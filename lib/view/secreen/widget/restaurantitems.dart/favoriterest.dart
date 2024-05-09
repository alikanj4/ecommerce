import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  final String text;
  final void Function()? addOrDeleteFavorite;
  const Favorite(
      {super.key, required this.text, required this.addOrDeleteFavorite});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          IconButton(
              onPressed: addOrDeleteFavorite,
              icon: const Icon(Icons.favorite_border, size: 35)),
          Text(text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
        ]));
  }
}
