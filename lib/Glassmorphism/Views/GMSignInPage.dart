import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Glassmorphism/Constants/Colors.dart';
import 'package:flutter_tutorial/Glassmorphism/Widgets/CustomButton.dart';
import 'package:flutter_tutorial/Glassmorphism/Widgets/CustomSphere.dart';
import 'package:flutter_tutorial/Glassmorphism/Widgets/CustomTextField.dart';
import 'package:flutter_tutorial/Glassmorphism/Widgets/GlassMorphismContainer.dart';
import 'package:flutter_tutorial/Glassmorphism/Controllers/SignInController.dart';
import 'package:get/get.dart';

import 'GMSignUpPage.dart';

class GMSignInPage extends StatelessWidget {
  final signInController = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                purpleBack,
                blueBack,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: -50,
                top: Get.height * 0.1,
                child: CustomSphere(
                  height: 200,
                  width: 200,
                ),
              ),
              Positioned(
                right: -50,
                bottom: Get.height * 0.075,
                child: CustomSphere(
                  height: 225,
                  width: 225,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.symmetric(horizontal: Get.width * 0.075),
                    child: GlassMorphismContainer(
                      height: 60.0,
                      width: 60.0,
                      borderRadius: 10.0,
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GlassMorphismContainer(
                    height: Get.height * 0.65,
                    width: Get.width * 0.8,
                    child: Column(
                      children: [
                        Spacer(),
                        Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        CustomTextField(
                          controller: signInController.email,
                          hintText: "Email",
                          prefixIcon: Icons.email,
                        ),
                        GetBuilder<SignInController>(builder: (controller) {
                          return CustomTextField(
                            controller: signInController.password,
                            hintText: "Password",
                            prefixIcon: Icons.email,
                            isObscure: controller.isObscure,
                            suffixIcon: Icons.remove_red_eye,
                            onTap: () => controller.setObscure(),
                          );
                        }),
                        SizedBox(height: 10.0),
                        CustomButton(
                          buttonName: "Sign In",
                          paddingH: 35.0,
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => GMSignUpPage()),
                    child: GlassMorphismContainer(
                      height: 50.0,
                      width: Get.width * 0.8,
                      borderRadius: 10.0,
                      child: Center(
                        child: Text(
                          "Donot Have Account, CLICK HERE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
