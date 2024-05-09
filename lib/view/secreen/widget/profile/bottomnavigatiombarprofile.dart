import 'package:flutter/material.dart';

class BottomNavigatiomBarProfile extends StatelessWidget {
  final void Function()? editData;
  final void Function()? deletAcconut;
  const BottomNavigatiomBarProfile(
      {super.key, this.editData, this.deletAcconut});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(
          width: 400,
          color: Colors.pink,
          child: MaterialButton(
            onPressed: editData,
            textColor: Colors.white,
            child: const Text("تعديل البيانات",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          )),
      Container(
          width: 400,
          child: MaterialButton(
            onPressed: deletAcconut,
            color: Colors.pink,
            textColor: Colors.white,
            child: const Text(" حذف الحساب  ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ))
    ]);
  }
}
