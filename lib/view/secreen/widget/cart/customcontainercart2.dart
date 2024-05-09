import 'package:flutter/material.dart';

class CustomContainerCart2 extends StatelessWidget {
  final String tyepeat;
  final String price;
  final String quantityorders;
  final void Function()? onPresseddelete;
  const CustomContainerCart2(
      {super.key,
      required this.tyepeat,
      required this.onPresseddelete,
      required this.price,
      required this.quantityorders});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: const EdgeInsets.all(20),
          height: 211,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(tyepeat,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(width: 50),
              Container(
                  width: 120,
                  height: 35,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink[200]),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(" : اسم المنتج",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ]))
            ]),

            //===================================================================

            const SizedBox(height: 8),
            const Divider(height: 2, color: Colors.grey),
            const SizedBox(height: 8),

            //===================================================================

            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                width: 50,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(8)),
                child: IconButton(
                    onPressed: onPresseddelete,
                    icon: const Icon(Icons.delete_outline_outlined)),
              ),
              const SizedBox(width: 15),
              Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(quantityorders)),
              const SizedBox(width: 20),
              Text(price,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(width: 40),
              Container(
                  width: 120,
                  height: 35,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink[200]),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(": الكمية والسعر ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ])),
            ]),

            //===================================================================

            const SizedBox(height: 8),
            const Divider(height: 2, color: Colors.grey),
            const SizedBox(height: 8),

            //===================================================================

            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              const Text("  _________ ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(width: 50),
              Container(
                  width: 120,
                  height: 35,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink[200]),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          " : الخيارات ",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ]))
            ])

            //===================================================================
          ])),
    ]);
  }
}
