import 'package:flutter/material.dart';

class CustomExpaCart extends StatelessWidget {
  final void Function()? onaddnote;
  final void Function()? onaddAddressNow;
  final void Function()? onaddCurrentAddress;
  final void Function()? discount;
  const CustomExpaCart(
      {super.key,
      this.onaddnote,
      this.onaddAddressNow,
      this.onaddCurrentAddress,
      this.discount});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Divider(color: Colors.grey, height: 3),
      ExpansionTile(
          trailing: const Icon(Icons.location_on_outlined),
          title: const Text("اختر عنوان التوصيل ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.all(15),
                  width: 150,
                  height: 60,
                  child: MaterialButton(
                      onPressed: onaddAddressNow,
                      child: const Text("اضف عنوان جديد",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)))),

              //=========================================================

              Container(
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.all(15),
                  width: 150,
                  height: 60,
                  child: MaterialButton(
                      onPressed: onaddCurrentAddress,
                      child: const Text("  ادارة عنوانك",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold))))
            ])
          ]),
      const Divider(color: Colors.grey, height: 3),

      //=========================================================

      ExpansionTile(
          trailing: const Icon(Icons.store_mall_directory_outlined),
          title: const Text("هل لديك قسمية خصم ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.pink)),
                      width: 100,
                      height: 65,
                      child: MaterialButton(
                          onPressed: discount,
                          textColor: Colors.pink,
                          child: const Text("تطبيق",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)))),
                  const SizedBox(width: 15),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      width: 220,
                      child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: " ادحل رمز القسيمة ",
                              fillColor: Colors.grey[200],
                              filled: true)))
                ]))
          ]),

      const Divider(color: Colors.grey, height: 3),

      //=========================================================

      ExpansionTile(
          trailing: const Icon(Icons.note_add_outlined),
          title: const Text("هل تود اضافة ملاحظات ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.pink)),
                      width: 100,
                      height: 65,
                      child: MaterialButton(
                          onPressed: onaddnote,
                          textColor: Colors.pink,
                          child: const Text("اضافة",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)))),
                  const SizedBox(width: 15),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      width: 230,
                      child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: " هل تود اضافة ملاحظات",
                              fillColor: Colors.grey[200],
                              filled: true)))

                  //=========================================================
                ]))
          ]),
    ]);
  }
}
