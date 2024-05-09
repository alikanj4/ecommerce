import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey[100],
            centerTitle: true,
            title: Text(" الطلبات",
                style: TextStyle(
                    color: Colors.pinkAccent[700],
                    fontWeight: FontWeight.bold))));
  }
}
