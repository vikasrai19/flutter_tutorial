import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Glassmorphism/Views/GMHomePage.dart';
import 'StateManagement/SetStateHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter_App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: SetStateHomePage(),
    );
  }
}
