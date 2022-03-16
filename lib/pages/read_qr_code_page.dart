import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReadQRCodePage extends StatelessWidget {
  const ReadQRCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Kod Oku'),
      ),
      body: Center(
        child: Text(
          Get.arguments['id'] ?? 'Page One',
          style: const TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
