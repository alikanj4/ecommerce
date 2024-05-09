import 'package:flutter/material.dart';

class CustomBottomBarCart extends StatelessWidget {
  final void Function()? continuetocompletetheorder;
  const CustomBottomBarCart(
      {super.key, required this.continuetocompletetheorder});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        textColor: Colors.white,
        onPressed: continuetocompletetheorder,
        child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 20),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.pink),
            child: const Text("تابع لإكمال الطلب",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))));
  }
}
