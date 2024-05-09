import 'package:ecomercekhaled/controller/restaurantitems_controller.dart';
import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:ecomercekhaled/view/secreen/widget/items/appbaritems.dart';
import 'package:ecomercekhaled/view/secreen/widget/items/infoitems.dart';
import 'package:ecomercekhaled/view/secreen/widget/items/inkwellitems.dart';
import 'package:ecomercekhaled/view/secreen/widget/restaurantitems.dart/carditemsrest.dart';
import 'package:ecomercekhaled/view/secreen/widget/restaurantitems.dart/favoriterest.dart';
import 'package:ecomercekhaled/view/secreen/widget/restaurantitems.dart/textlimitrest.dart';
import 'package:ecomercekhaled/view/secreen/widget/restaurantitems.dart/textrest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantItems extends StatelessWidget {
  const RestaurantItems({super.key});

  @override
  Widget build(BuildContext context) {
    ResturantItemsControllerControllerImp controller =
        Get.put(ResturantItemsControllerControllerImp());
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Container(
            padding: const EdgeInsets.all(10),
            child: ListView(children: [
              Column(children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.all(15),
                    child: Column(children: [
                      Hero(
                          tag: Image.asset(ImageAsset.eat),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(ImageAsset.eat,
                                  fit: BoxFit.fill))),
                      const SizedBox(height: 15),

                      //====================================

                      const TextRest(text: "القبطان", numberfont: 25),
                      const TextRest(
                          text: "شاورما . فروج مشوي . مشاوي . سمك ",
                          numberfont: 16),
                      const SizedBox(height: 15),

                      //====================================

                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.orange[100],
                                  borderRadius: BorderRadius.circular(5)),
                              child: InfoItems(
                                text: "التقيمات",
                                icons: Icons.star,
                                onTap: () {
                                  Get.toNamed(AppRoute.evaluation);
                                },
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.green[100],
                                  borderRadius: BorderRadius.circular(5)),
                              child: InfoItems(
                                  onTap: () {},
                                  text: "مفتوح",
                                  icons: Icons.assignment_turned_in_rounded),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius: BorderRadius.circular(5)),
                              child: InfoItems(
                                  onTap: () {},
                                  text: "10 \$",
                                  icons: Icons.delivery_dining),
                            )
                          ]),

                      //====================================

                      const SizedBox(height: 15),
                      const Divider(height: 10, color: Colors.black),
                      const SizedBox(height: 15),

                      //====================================

                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.orange[100],
                                  borderRadius: BorderRadius.circular(10)),
                              child: InkWellItems(
                                  onTap: () {},
                                  text: "معلومات ",
                                  icons: Icons.info_outline),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.green[100],
                                  borderRadius: BorderRadius.circular(10)),
                              child: InkWellItems(
                                  onTap: () {
                                    controller.gotocart();
                                  },
                                  text: "السلة ",
                                  icons: Icons.shopping_cart_outlined),
                            ),

                            //====================================

                            Favorite(
                                text: "المفصلة", addOrDeleteFavorite: () {})
                          ]),

                      //====================================

                      const TextLimitRest(
                          colors: Color.fromARGB(255, 241, 211, 165),
                          text: "الحد الأدنى للطلب هو 85 ")
                    ])),

                //=====================================

                ExpansionTile(
                    title: const Text(" خيارات البحث  ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    children: [
                      Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(children: [
                            CustomAppBarItems(
                                hinttext: "ابحث ", onPressedsearsh: () {})
                          ])),
                      const SizedBox(height: 25)
                    ]),

                //=========================

                CardItems(
                    gotoprudectdetils: () {
                      controller.gotoprudectdetils();
                    },
                    onTapaddtocart: () {},
                    image: ImageAsset.matam,
                    nameprudect: "فروج بروستد",
                    dec: "بروستد",
                    price: "200"),
              ])
            ])));
  }
}
