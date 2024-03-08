import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/riwayat_page_controller.dart';

class RiwayatPageView extends GetView<RiwayatPageController> {
  const RiwayatPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF3FAF3),
        title: const Text('RiwayatPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RiwayatPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
