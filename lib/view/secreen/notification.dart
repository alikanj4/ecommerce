import 'package:flutter/material.dart';

class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Colors.grey[100],
            centerTitle: true,
            title: Text(" الإشعارات ",
                style: TextStyle(
                    color: Colors.pinkAccent[700],
                    fontWeight: FontWeight.bold))));
  }
}
