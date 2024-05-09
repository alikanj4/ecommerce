import 'package:ecomercekhaled/controller/ecommerce_controller.dart';
import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/view/secreen/widget/items/appbaritems.dart';
import 'package:ecomercekhaled/view/secreen/widget/items/containeritems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ecommerce extends StatefulWidget {
  const Ecommerce({super.key});

  @override
  State<Ecommerce> createState() => _StateEcommerce();
}

class _StateEcommerce extends State<Ecommerce> {
  @override
  Widget build(BuildContext context) {
    EcommerceImp controller = Get.put(EcommerceImp());
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Colors.grey[100],
            centerTitle: true,
            title: const Text("نتائج البحث ",
                style: TextStyle(
                    color: Colors.pinkAccent, fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(children: [
            //======================================
            Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.name.length,
                    itemBuilder: (context, index) {
                      return Wrap(spacing: 8, runSpacing: 8, children: [
                        const SizedBox(width: 3),
                        ChoiceChip(
                            selectedColor: Colors.blue[100],
                            backgroundColor: Colors.grey[100],
                            selected: controller.defaultchioseindex == index,
                            onSelected: (nowSelcted) {
                              setState(() {
                                controller.defaultchioseindex =
                                    nowSelcted ? index : null;
                              });
                            },
                            label: Text("${controller.name[index]}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)))
                      ]);
                    })),

            //=====================================================

            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                child: CustomAppBarItems(
                    hinttext: "  ابحث ", onPressedsearsh: () {})),

            //======================================

            Container(child: Image.asset(ImageAsset.aova)),
            const SizedBox(height: 20),
            CustomCard(
                priceOrdre: '10',
                evaluationNumber: '4.9',
                onTap: () {
                  controller.gotoitemsecommce();
                },
                nameresturant: "AVON",
                contentrest: "عطور   . اكسسورات ",
                openOrClosed: "مفتوح",
                image: ImageAsset.aova)
          ]),
        )));
  }
}
