import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  // This is for sign in page
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool isTextObscure = true;

  // This is for signup page
  TextEditingController sName = new TextEditingController();
  TextEditingController sEmail = new TextEditingController();
  TextEditingController sPassword = new TextEditingController();

  void isObscure() {
    isTextObscure = !isTextObscure;
    print("isTextObscure value " + isTextObscure.toString());
    update();
  }
}
