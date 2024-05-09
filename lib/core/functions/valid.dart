import 'package:get/get.dart';

// ignore: non_constant_identifier_names
ValidInOut(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Not Valid username";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Not Valid phone";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Not Valid email";
    }
  }

  if (val.isEmpty) {
    return "can not valid is Empty";
  }

  if (val.length < min) {
    return " لايمن ان يموت اصغر من $min";
  }

  if (val.length > max) {
    return " لايمن ان يموت اكبر من $max";
  }
}
