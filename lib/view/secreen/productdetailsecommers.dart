import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/view/secreen/widget/prudectdetails/custombottomnavigationbar.dart';
import 'package:ecomercekhaled/view/secreen/widget/prudectdetails/customcontianerdet.dart';
import 'package:flutter/material.dart';

class ProductDetailsEcommers extends StatelessWidget {
  const ProductDetailsEcommers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:

            //==========================================================

            Container(
                margin: const EdgeInsets.all(15),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: CustomNavigatorBar(
                  priceend: '300',
                  onadd: () {},
                  onremove: () {},
                  count: '2',
                )),

        //==========================================================

        backgroundColor: Colors.grey[200],
        body: Column(children: [
          Container(
            height: 370,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),

            //==========================================================

            child: Column(children: [
              Container(child: Image.asset(ImageAsset.aova)),

              //==========================================================

              const SizedBox(height: 20),
              const Text(" عطر اتراكشين ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const Text("عطر نسائي 50 ملي  ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),

              //==========================================================

              CustomContainerdet(price: '200 \$', addtocart: () {})

              //==========================================================
            ]),
          ),
        ]));
  }
}
