import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/produk_page_controller.dart';

class ProdukPageView extends GetView<ProdukPageController> {
  const ProdukPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProdukPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProdukPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
