import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  bool isObscure = true;

  void setObscure() {
    isObscure = !isObscure;
    update();
  }
}
