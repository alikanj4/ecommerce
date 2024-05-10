import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String nameresturant;
  final String contentrest;
  final String openOrClosed;
  final String image;
  final String evaluationNumber;
  final String priceOrdre;
  final Function()? onTap;
  const CustomCard({
    super.key,
    required this.nameresturant,
    required this.contentrest,
    required this.openOrClosed,
    required this.image,
    required this.onTap,
    required this.priceOrdre,
    required this.evaluationNumber,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            height: 130,
            child: Row(children: [
              //=========================================

              Expanded(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(image))),
              const SizedBox(width: 15),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Container(
                    height: 50,
                    padding: const EdgeInsets.only(top: 10),

                    //=========================================

                    child: Text(nameresturant,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold))),

                //=========================================

                Text(contentrest),
                const Divider(height: 10, color: Colors.black),

                //=========================================

                Row(children: [
                  Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(Icons.delivery_dining,
                                color: Colors.red),
                            Text("$priceOrdre \$",
                                style: const TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))
                          ])),

                  //=========================================

                  const SizedBox(width: 5),
                  Container(
                      alignment: Alignment.topLeft,
                      height: 30,
                      width: 70,
                      padding: const EdgeInsets.only(top: 2),
                      decoration: BoxDecoration(
                          color: Colors.orange[200],
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(Icons.star, color: Colors.yellowAccent),
                            Text(evaluationNumber,
                                style: const TextStyle(
                                    color: Colors.orange,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))
                          ])),
                  const SizedBox(width: 5),

                  //=========================================

                  Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 75,
                      decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(Icons.assignment_turned_in_rounded,
                                color: Colors.green),
                            Text(openOrClosed,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green))
                          ]))
                ])
              ])
            ])));
  }
}
