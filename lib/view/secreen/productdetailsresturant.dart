import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/view/secreen/widget/prudectdetails/custombottomnavigationbar.dart';
import 'package:ecomercekhaled/view/secreen/widget/prudectdetails/customcontianerdet.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.all(15),
            child: CustomNavigatorBar(
              priceend: '300',
              onadd: () {},
              onremove: () {},
              count: "2",
            )),

        //=========================

        backgroundColor: Colors.grey[200],
        body: Column(children: [
          Container(
              height: 370,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(ImageAsset.eat)),

                //=========================

                const SizedBox(height: 20),
                const Text("فروج بروستد",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                const Text("البروستد ",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                const CustomContainerdet(price: '200 \$')
              ])),
        ]));
  }
}
