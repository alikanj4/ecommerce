import 'package:flutter/material.dart';

class CardItems extends StatelessWidget {
  final String image;
  final String nameprudect;
  final String dec;
  final String price;
  final Function()? onTapaddtocart;
  final Function()? gotoprudectdetils;
  const CardItems(
      {super.key,
      required this.image,
      required this.nameprudect,
      required this.dec,
      required this.price,
      required this.onTapaddtocart,
      this.gotoprudectdetils});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
          onTap: gotoprudectdetils,
          child: Container(
              padding: const EdgeInsets.all(10),
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(children: [
                //=========================================

                Expanded(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(image))),

                //=========================================

                const SizedBox(width: 15),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Container(
                      height: 50,
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(nameprudect,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold))),

                  //=========================================

                  Text(dec),
                  const SizedBox(height: 10),
                  const Divider(height: 5, color: Colors.black),
                  //=========================================

                  Row(children: [
                    Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.center,
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(children: [
                          Text(' $price \$ ',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          const Icon(Icons.money)
                        ])),

                    //=========================================

                    const SizedBox(width: 5),

                    //=========================================

                    InkWell(
                      onTap: onTapaddtocart,
                      child: Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 110,
                          decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius: BorderRadius.circular(5)),
                          child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('أضف للسلة ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                Icon(Icons.shopping_cart_outlined)
                              ])),
                    ),
                  ])
                ])
              ]))),
      const SizedBox(height: 15)
    ]);
  }
}
