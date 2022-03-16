import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Page Four
class EmptyPage extends StatelessWidget {
  const EmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Empty Page'),
      ),
      body: Center(
        child: Text(
          Get.parameters['data'] ?? 'Empty Page',
          style: const TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
