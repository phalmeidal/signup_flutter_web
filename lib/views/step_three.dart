import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'step_four.dart';

class StepThreePage extends StatelessWidget {
  const StepThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step Three'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(const StepFourPage());
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}
