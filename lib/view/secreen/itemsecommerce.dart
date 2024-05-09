import 'package:ecomercekhaled/controller/Iitemsecommerce_controller.dart';
import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:ecomercekhaled/view/secreen/widget/items/appbaritems.dart';
import 'package:ecomercekhaled/view/secreen/widget/items/infoitems.dart';
import 'package:ecomercekhaled/view/secreen/widget/items/inkwellitems.dart';
import 'package:ecomercekhaled/view/secreen/widget/restaurantitems.dart/carditemsrest.dart';
import 'package:ecomercekhaled/view/secreen/widget/restaurantitems.dart/favoriterest.dart';
import 'package:ecomercekhaled/view/secreen/widget/restaurantitems.dart/textrest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsEcommerce extends StatelessWidget {
  const ItemsEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsEcommerceImp controller = Get.put(ItemsEcommerceImp());
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
                          tag: Image.asset(ImageAsset.aova),
                          child:
                              Image.asset(ImageAsset.aova, fit: BoxFit.fill)),
                      const SizedBox(height: 15),

                      //====================================

                      const TextRest(text: "AVON", numberfont: 25),
                      const TextRest(text: "عطور . اكسسورات", numberfont: 16),
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
                              text: "المفصلة",
                              addOrDeleteFavorite: () {},
                            )
                          ]),

                      //====================================

                      const SizedBox(height: 15)
                    ])),

                //====================================

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
                      controller.gotoprudectecommerce();
                    },
                    onTapaddtocart: () {},
                    image: ImageAsset.aova,
                    nameprudect: " عطر اتراكشين",
                    dec: "عطر نسائي 50 ملي",
                    price: "200")
              ])
            ])));
  }
}
