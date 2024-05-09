import 'package:flutter/material.dart';

class CustomAppBarItems extends StatelessWidget {
  final String hinttext;
  final void Function()? onPressedsearsh;

  const CustomAppBarItems({
    super.key,
    required this.hinttext,
    required this.onPressedsearsh,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
                hintText: hinttext,
                prefixIcon: IconButton(
                    onPressed: onPressedsearsh, icon: const Icon(Icons.search)),
                fillColor: Colors.grey[300],
                filled: true)));
  }
}
