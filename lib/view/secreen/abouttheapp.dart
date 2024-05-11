import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/view/secreen/widget/abouttheapp/customcontainerabouttheapp.dart';
import 'package:flutter/material.dart';

class AboutTheApp extends StatelessWidget {
  const AboutTheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text("حول التطبيق ",
                style: TextStyle(
                    color: Colors.pinkAccent, fontWeight: FontWeight.bold))),
        body: ListView(children: [
          Container(
              margin: const EdgeInsets.all(15),
              child: Column(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(ImageAsset.duzo)),
                const SizedBox(height: 30),
                const Center(
                    child: Text("تم تطوير هذا التطبيق في معامل دوزو ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.pink,
                            fontWeight: FontWeight.bold))),
                const Center(
                    child: Text(
                        "إذا كان لديك اقتراح او فكرة تريد تنفيذها فتواصل معنا \n عبر الوسائل التالية ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                const SizedBox(height: 15),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: const Divider(height: 5, color: Colors.grey)),
                const SizedBox(height: 15),
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
                      text: "انستغرام", image: ImageAsset.insta)
                ])
              ]))
        ]));
  }
}
