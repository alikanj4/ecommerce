import 'package:ecomercekhaled/view/secreen/widget/evaluation.dart/containareval2.dart';
import 'package:ecomercekhaled/view/secreen/widget/evaluation.dart/containarevaluation.dart';
import 'package:flutter/material.dart';

class Evaluation extends StatelessWidget {
  const Evaluation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            centerTitle: true,
            title: const Text("التقيمات",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink))),
        body: ListView(children: const [
          //========================================

          ContainarEvaluation(
              text: 'التقيم الاجمالي',
              text2: 'عدد التقيمات',
              overallevaluation: '23',
              numberevaluation: '20'),

          //========================================

          Continer2(name: 'ahmad', icondata: Icons.star, history: '2020 / 2/2 ')
        ]));
  }
}
