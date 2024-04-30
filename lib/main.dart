import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up_page/app/views/signup_page.dart';
import 'package:sign_up_page/app/views/step_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Registration System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignupPage(),
    );
  }
}
