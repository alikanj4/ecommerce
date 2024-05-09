import 'package:flutter/material.dart';

class CustomContainerCart extends StatelessWidget {
  final String numberproducts;
  final String priceproducts;

  const CustomContainerCart({
    super.key,
    required this.numberproducts,
    required this.priceproducts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: const EdgeInsets.all(20),
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(children: [
            //================================

            Expanded(
                flex: 1,
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text("$numberproducts  \$"),
                  const SizedBox(width: 15),
                  const Text(": عدد المنتجات",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 15),
                  const Icon(Icons.shopping_cart_outlined)
                ])),
            const Divider(height: 2, color: Colors.grey),

            //================================

            Expanded(
                flex: 1,
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text("$priceproducts   \$"),
                  const SizedBox(width: 15),
                  const Text(": سعر المنتجات",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 15),
                  const Icon(Icons.shopping_cart_outlined)
                ]))
          ]))
    ]);
  }
}
