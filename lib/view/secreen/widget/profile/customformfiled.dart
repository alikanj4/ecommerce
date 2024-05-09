import 'package:flutter/material.dart';

class CustomformfiledProfile extends StatelessWidget {
  final String hinttext;
  final String label;
  final IconData icondata;
  const CustomformfiledProfile(
      {super.key,
      required this.hinttext,
      required this.label,
      required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(
          decoration: InputDecoration(
              hintText: hinttext,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(label),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              prefixIcon: Icon(icondata))),
      const SizedBox(height: 20)
    ]);
  }
}
