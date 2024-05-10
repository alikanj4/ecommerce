import 'package:ecomercekhaled/controller/home-controller.dart';
import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:ecomercekhaled/core/functions/alertexitapp.dart';
import 'package:ecomercekhaled/view/secreen/widget/home/coustomappbarhome.dart';
import 'package:ecomercekhaled/view/secreen/widget/home/customimagehome.dart';
import 'package:ecomercekhaled/view/secreen/widget/home/rowimagehome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: PopScope(
            canPop: false,
            onPopInvoked: (didPop) {
              alertexitapp();
            },
            child: ListView(children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(5),
                  child: Column(children: [
                    CustomAppBar(
                        onChanged: (val) {},
                        hinttext: "              الريحانية ",
                        refresh: () {
                          Get.toNamed(AppRoute.homepage);
                        },
                        notification: () {
                          controller.gotonotification();
                        }),
                    const SizedBox(height: 10),

                    //==========================================================

                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(ImageAsset.image1)),
                    const SizedBox(height: 10),

                    //==========================================================

                    Container(
                        alignment: Alignment.centerRight,
                        child: const Text("جوعان ؟  حابب تتسوق ؟ ",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold))),

                    //==========================================================
                    const SizedBox(height: 15),

                    CustomImageHome(onTapecommerce: () {
                      controller.gotoitemsecommerce();
                    }, onTapmatam: () {
                      controller.gotoitemsrestaurant();
                    }),

                    //==========================================================

                    const SizedBox(height: 20),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        height: 150,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.imagename.length,
                            itemBuilder: (context, index) {
                              return CustomStackHome1(
                                  image: "${controller.imagename[index]}",
                                  text: controller.name[index]);
                            })),
                    const SizedBox(height: 15),

                    //==========================================================

                    Container(
                        height: 40,
                        alignment: Alignment.centerRight,
                        child: const Text("يا مرحبا باللي جاي ",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold))),
                    const SizedBox(height: 15),

                    //==========================================================

                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        height: 150,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.imagename.length,
                            itemBuilder: (context, index) {
                              return CustomStackHome1(
                                  image: "${controller.imagename[index]}",
                                  text: controller.name[index]);
                            }))
                  ]))
            ])));
  }
}
