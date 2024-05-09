import 'package:ecomercekhaled/controller/profile_controller.dart';
import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/view/secreen/widget/profile/bottomnavigatiombarprofile.dart';
import 'package:ecomercekhaled/view/secreen/widget/profile/customformfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileControllerImp controller = Get.put(ProfileControllerImp());
    return Scaffold(

        //==============================

        bottomNavigationBar:
            BottomNavigatiomBarProfile(deletAcconut: () {}, editData: () {}),

        //==============================

        appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text(" الملف الشخصي ",
                style: TextStyle(
                    color: Colors.pinkAccent, fontWeight: FontWeight.bold))),
        body: Container(
            margin: const EdgeInsets.all(10),
            child: ListView(children: [
              Column(children: [
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 200,
                    width: 200,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(ImageAsset.kol))),

                //==============================

                const CustomformfiledProfile(
                    hinttext: "Name", icondata: Icons.person, label: "Name"),

                //==============================

                const CustomformfiledProfile(
                    hinttext: "Number Phone",
                    icondata: Icons.phone,
                    label: "Number Phone"),

                //==============================

                const CustomformfiledProfile(
                    hinttext: "Email",
                    icondata: Icons.email_outlined,
                    label: "Email"),

                //==============================

                const CustomformfiledProfile(
                    hinttext: "password",
                    icondata: Icons.password,
                    label: "pasword"),
              ])
            ])));
  }
}
