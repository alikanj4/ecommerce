import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecomercekhaled/core/class/statusrequsert.dart';
import 'package:ecomercekhaled/core/functions/CheckIntrnet.dart';
import 'package:http/http.dart' as http;

class Curd {
  Future<Either<StatusRequest, Map>> postRequest(
      String linkurl, Map data) async {
    if (await CheckIntrnet()) {
      var response = await http.post(Uri.parse(linkurl), body: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var responsebody = jsonDecode(response.body);
        return Right(responsebody);
      } else {
        return const Left(StatusRequest.servereailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailuer);
    }
  }
}
