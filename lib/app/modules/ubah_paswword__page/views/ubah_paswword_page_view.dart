import 'package:challenge_motion/app/modules/profile_page/views/profile_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/ubah_paswword_page_controller.dart';

class UbahPaswwordPageView extends GetView<UbahPaswwordPageController> {
  final _textEditingController = TextEditingController();
  UbahPaswwordPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Ubah Passsword',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
          color: Colors.white,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 140,
        backgroundColor: const Color(0xFF62C172),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password Lama',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(isDense: true),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Password Baru',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(isDense: true),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Konfirmasi Password',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(isDense: true),
                ),
              ],
            ),
            Spacer(),
            //MediaQuery.of(context).viewInsets.bottom != 0? null:
            GestureDetector(
              onTap: () {
                Get.to(ProfilePageView());
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF74DA74),
                ),
                width: 164,
                height: 48,
                child: const Center(
                  child: Text(
                    'SIMPAN',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
