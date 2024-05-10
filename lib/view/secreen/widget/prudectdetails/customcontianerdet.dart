import 'package:flutter/material.dart';

class CustomContainerdet extends StatelessWidget {
  final String price;
  final Function()? addtocart;
  const CustomContainerdet(
      {super.key, required this.price, required this.addtocart});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          height: 40,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.circular(10)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text(price)])),
      InkWell(
        onTap: addtocart,
        child: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(10)),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("أضف للسلة "),
                  Icon(Icons.shopping_cart_outlined)
                ])),
      ),
    ]);
  }
}
