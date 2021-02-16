import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Glassmorphism/Constants/Colors.dart';
import 'package:flutter_tutorial/Glassmorphism/Widgets/CustomButton.dart';
import 'package:flutter_tutorial/Glassmorphism/Widgets/CustomSphere.dart';
import 'package:flutter_tutorial/Glassmorphism/Widgets/CustomTextField.dart';
import 'package:flutter_tutorial/Glassmorphism/Widgets/GlassMorphismContainer.dart';
import 'package:get/get.dart';

class GMSignUpPage extends StatelessWidget {
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
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.075),
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: GlassMorphismContainer(
                          height: 60.0,
                          width: 60.0,
                          borderRadius: 10.0,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(),
                      GlassMorphismContainer(
                        height: 60.0,
                        width: 60.0,
                        borderRadius: 10.0,
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: Get.width * 0.075),
                    ],
                  ),
                  GlassMorphismContainer(
                    height: Get.height * 0.65,
                    width: Get.width * 0.8,
                    child: Column(
                      children: [
                        Spacer(),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        CustomTextField(
                          hintText: "Name",
                          prefixIcon: Icons.person,
                        ),
                        CustomTextField(
                          hintText: "Email",
                          prefixIcon: Icons.email,
                        ),
                        CustomTextField(
                          hintText: "Password",
                          prefixIcon: Icons.email,
                          isObscure: true,
                          suffixIcon: Icons.remove_red_eye,
                        ),
                        SizedBox(height: 10.0),
                        CustomButton(
                          buttonName: "Sign In",
                          paddingH: 35.0,
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Text(
                    "By Signing Up, you are accepting our terms and conditions",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
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
