import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:flutter/material.dart';

class CustomImageHome extends StatelessWidget {
  final void Function()? onTapecommerce;
  final void Function()? onTapmatam;
  const CustomImageHome({super.key, this.onTapecommerce, this.onTapmatam});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      InkWell(
          onTap: onTapecommerce,
          child: Container(
              width: 180,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(ImageAsset.ecommerce)))),

      //==========================================

      const SizedBox(width: 10),
      InkWell(
          onTap: onTapmatam,
          child: Container(
            width: 180,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(ImageAsset.matam)),
          ))
    ]);
  }
}
