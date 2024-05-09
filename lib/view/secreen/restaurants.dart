import 'package:ecomercekhaled/controller/resturanuts_controller.dart';
import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/view/secreen/widget/items/appbaritems.dart';
import 'package:ecomercekhaled/view/secreen/widget/items/containeritems.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Restusaunts extends StatefulWidget {
  const Restusaunts({super.key});

  @override
  State<Restusaunts> createState() => _StateRestusaunts();
}

class _StateRestusaunts extends State<Restusaunts> {
  @override
  Widget build(BuildContext context) {
    ResturanutsControllerImp controller = Get.put(ResturanutsControllerImp());
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Colors.grey[100],
            centerTitle: true,
            title: const Text("نتائج البحث ",
                style: TextStyle(
                    color: Colors.pinkAccent, fontWeight: FontWeight.bold))),
        body: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: SingleChildScrollView(
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
                            selected: controller.ali == index,
                            onSelected: (nowSelcted) {
                              setState(() {
                                controller.ali = nowSelcted ? index : null;
                              });
                            },
                            label: Text("${controller.name[index]}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)))
                      ]);
                    })),
// ChoiceChip(label: label, selected: selected)
            //=====================================================

            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                child: CustomAppBarItems(
                    hinttext: "  ابحث ", onPressedsearsh: () {})),

            //======================================

            ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(ImageAsset.image1)),
            const SizedBox(height: 20),

            //======================================

            CustomCard(
                onTap: () {
                  controller.gotoresturantsitems();
                },
                nameresturant: "القبطان",
                contentrest: "شاورما .   فروج . كباب....",
                openOrClosed: "مفتوح",
                image: ImageAsset.matam,
                priceOrdre: '10',
                evaluationNumber: '4.9')
          ])),
        ));
  }
}
