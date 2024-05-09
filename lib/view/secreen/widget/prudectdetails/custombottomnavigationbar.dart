import 'package:flutter/material.dart';

class CustomNavigatorBar extends StatelessWidget {
  final String priceend;
  final String count;
  final void Function()? onadd;
  final void Function()? onremove;
  const CustomNavigatorBar({
    super.key,
    required this.priceend,
    this.onadd,
    this.onremove,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          //====================================

          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.pink),
              height: 45,
              width: 180,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(priceend),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: onadd,
                        child: const Text("اضافة ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)))
                  ])),

          //==========================================
          Container(
              width: 160,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Row(children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: onadd, icon: const Icon(Icons.add))),
                const SizedBox(width: 5),

                //==========================================

                Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(count, style: const TextStyle(height: 1.1))),
                const SizedBox(width: 5),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: onremove, icon: const Icon(Icons.remove)))
              ]))
        ]));
  }
}
