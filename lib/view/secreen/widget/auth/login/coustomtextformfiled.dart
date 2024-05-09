import 'package:flutter/material.dart';

class Customformfiled extends StatelessWidget {
  final String title;
  final IconData icondata;
  final TextEditingController controller;
  final String label;
  final String? Function(String?) valid;
  final bool isNamebr;
  final bool? obscureText;
  final void Function()? onTapIcons;

  const Customformfiled(
      {super.key,
      required this.title,
      required this.label,
      required this.icondata,
      required this.controller,
      required this.valid,
      required this.isNamebr,
      this.obscureText,
      this.onTapIcons});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextFormField(
        obscureText: obscureText == null || obscureText == false ? false : true,
        keyboardType: isNamebr
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        controller: controller,
        decoration: InputDecoration(
            hintText: title,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(label),
            ),
            suffixIcon: InkWell(
              // ignore: sort_child_properties_last
              child: Icon(icondata),
              onTap: onTapIcons,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
