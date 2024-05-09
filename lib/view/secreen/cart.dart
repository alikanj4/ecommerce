import 'package:ecomercekhaled/controller/cart_controller.dart';
import 'package:ecomercekhaled/view/secreen/widget/cart/custombottomnavigatorbarcart.dart';
import 'package:ecomercekhaled/view/secreen/widget/cart/customcontainaercart.dart';
import 'package:ecomercekhaled/view/secreen/widget/cart/customcontainercart2.dart';
import 'package:ecomercekhaled/view/secreen/widget/cart/customexpanion.dart';
import 'package:ecomercekhaled/view/secreen/widget/restaurantitems.dart/textlimitrest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _Statecart();
}

class _Statecart extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    CartControllerImp controller = Get.put(CartControllerImp());
    return Scaffold(
        //===========================================

        bottomNavigationBar: CustomBottomBarCart(
          continuetocompletetheorder: () {},
        ),

        //===========================================

        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Colors.grey[100],
            centerTitle: true,
            title: Text(" سلة الطلبات  ",
                style: TextStyle(
                    color: Colors.pinkAccent[700],
                    fontWeight: FontWeight.bold))),
        body: Container(
            margin: const EdgeInsets.all(15),
            child: ListView(children: [
              //===========================================

              const CustomContainerCart(
                  numberproducts: "4400", priceproducts: "400"),
              const SizedBox(height: 20),

              //===========================================

              CustomContainerCart2(
                  tyepeat: "فروج",
                  price: "388",
                  quantityorders: "2",
                  onPresseddelete: () {}),
              const SizedBox(height: 20),

              //==========================================================================

              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      ExpansionTile(
                          trailing: const Icon(Icons.monetization_on_outlined),
                          childrenPadding: const EdgeInsets.all(10),
                          title: const Text("اعدادات الدفع والتوصيل ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          children: [
                            const Text("نوع الطلب "),
                            Container(
                                margin: const EdgeInsets.all(10),
                                width: double.infinity,
                                child: CupertinoSlidingSegmentedControl(
                                    groupValue: controller.setectcontroller,
                                    children: controller.children,
                                    onValueChanged: (value) {
                                      setState(() {
                                        controller.setectcontroller =
                                            value as int?;
                                      });
                                    })),
                            const SizedBox(height: 15),
                            Container(
                                margin: const EdgeInsets.all(10),
                                width: double.infinity,
                                child: CupertinoSlidingSegmentedControl(
                                    groupValue: controller.setectcontroller2,
                                    children: controller.children2,
                                    onValueChanged: (value) {
                                      setState(() {
                                        controller.setectcontroller2 =
                                            value as int?;
                                      });
                                    })),
                            MaterialButton(
                                onPressed: () {},
                                textColor: Colors.white,
                                child: const TextLimitRest(
                                    colors: Colors.pink,
                                    text: "وقف التوصيل المتوقع : 30 دقيقة "))
                          ]),

                      //==========================================================================

                      CustomExpaCart(
                          discount: () {},
                          onaddAddressNow: () {},
                          onaddCurrentAddress: () {},
                          onaddnote: () {}),

                      //==========================================================================
                    ],
                  )),
            ])));
  }
}
