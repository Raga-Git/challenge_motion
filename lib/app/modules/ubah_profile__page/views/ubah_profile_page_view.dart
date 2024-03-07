import 'package:challenge_motion/app/modules/navigation/views/navigation_view.dart';
import 'package:challenge_motion/app/modules/profile_page/views/profile_page_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/ubah_profile_page_controller.dart';

class UbahProfilePageView extends GetView<UbahProfilePageController> {
  UbahProfilePageView({Key? key}) : super(key: key);
  TextEditingController namaLengkapEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController noTeleponEditingController = TextEditingController();
  TextEditingController alamatEditingController = TextEditingController();

  // CollectionReference collectionReference =
  //     FirebaseFirestore.instance.collection('Profile');

  void update() {
    FirebaseFirestore.instance
        .collection('Profile')
        .doc('L8a0cNMdTBuwSo6mCEjh')
        .update({
      'namaLengkap': namaLengkapEditingController.text,
      'email': emailEditingController.text,
      'noTelepon': noTeleponEditingController.text,
      'alamat': alamatEditingController.text,
    });
    namaLengkapEditingController.clear();
    emailEditingController.clear();
    noTeleponEditingController.clear();
    emailEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Ubah Profile',
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
        centerTitle: true,
        toolbarHeight: 140,
        backgroundColor: const Color(0xFF62C172),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/fotoProfile.png',
                      scale: 1.5,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.black45,
                      radius: 53,
                    ),
                    Image.asset(
                      'assets/images/camera.png',
                      scale: 1.5,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama Lengkap',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  controller: namaLengkapEditingController,
                  decoration: InputDecoration(
                    isDense: true,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  controller: emailEditingController,
                  decoration: InputDecoration(
                    isDense: true,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Nomor telepon',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  controller: noTeleponEditingController,
                  decoration: InputDecoration(
                    isDense: true,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Alamat',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  controller: alamatEditingController,
                  decoration: InputDecoration(
                    isDense: true,
                  ),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                update();
                Get.to(NavigationView());
              },
              child: Text(
                'SIMPAN',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFF74DA74),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
