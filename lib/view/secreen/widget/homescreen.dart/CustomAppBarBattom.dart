import 'package:ecomercekhaled/core/constant/appcolors.dart';
import 'package:flutter/material.dart';

class CustomAppBarBattom extends StatelessWidget {
  final void Function()? onPressed;
  final IconData iconData;
  final bool? avtive;
  final String texttitle;
  const CustomAppBarBattom(
      {super.key,
      required this.onPressed,
      required this.iconData,
      required this.avtive,
      required this.texttitle});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      MaterialButton(
          onPressed: onPressed,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(iconData,
                size: 30,
                color: avtive == true ? AppColors.orang : Colors.black),
            Text(texttitle,
                style: TextStyle(
                    color: avtive == true ? AppColors.orang : Colors.black))
          ]))
    ]);
  }
}
