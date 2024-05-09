import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String hinttext;
  final void Function()? refresh;
  final void Function()? onPressedsearsh;
  final void Function(String)? onChanged;
  final void Function()? notification;

  const CustomAppBar(
      {super.key,
      required this.hinttext,
      this.onPressedsearsh,
      required this.refresh,
      required this.onChanged,
      required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Row(children: [
          Expanded(
              flex: 1,
              child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 7.5, horizontal: 7.5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: IconButton(
                      onPressed: refresh,
                      icon: const Icon(Icons.refresh, size: 30)))),
          const SizedBox(width: 10),

          //========================================

          Expanded(
              flex: 4,
              child: Container(
                height: 63,
                alignment: Alignment.center,
                child: TextFormField(
                    onChanged: onChanged,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        hintText: hinttext,
                        hintStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        fillColor: Colors.grey[200],
                        filled: true)),
              )),
          const SizedBox(width: 10),

          //========================================

          Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.5, horizontal: 7.5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200]),
              child: IconButton(
                  onPressed: notification,
                  icon: const Icon(Icons.notifications_active_outlined,
                      size: 30)))
        ]));
  }
}
