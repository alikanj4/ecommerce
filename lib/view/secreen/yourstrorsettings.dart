import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/view/secreen/widget/abouttheapp/customcontainerabouttheapp.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class YourStoreSettings extends StatelessWidget {
  const YourStoreSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text("حول التطبيق ",
              style: TextStyle(
                  color: Colors.pinkAccent, fontWeight: FontWeight.bold))),
      body: ListView(
        children: [
          Column(
            children: [
              Lottie.asset(ImageAsset.office, height: 200),
              const Wrap(spacing: 30, runSpacing: 30, children: [
                CustomContainerAboutTheApp(
                    text: "واتس أب ", image: ImageAsset.whatsapp),
                CustomContainerAboutTheApp(
                    text: "اتصال هاتفي", image: ImageAsset.contact),
                CustomContainerAboutTheApp(
                    text: "البريد الالكتروني", image: ImageAsset.gmail),
                CustomContainerAboutTheApp(
                    text: "الموقع الالكتروني", image: ImageAsset.website),
                CustomContainerAboutTheApp(
                    text: "تويتر", image: ImageAsset.twiter),
                CustomContainerAboutTheApp(
                    text: "انستغرام", image: ImageAsset.insta),
                CustomContainerAboutTheApp(
                    text: "فيسوبك", image: ImageAsset.fasbooke),
                CustomContainerAboutTheApp(
                    text: "سناب شات", image: ImageAsset.snapshat),
              ])
            ],
          )
        ],
      ),
    );
  }
}
