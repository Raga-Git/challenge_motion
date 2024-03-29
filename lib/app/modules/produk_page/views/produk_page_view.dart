// ignore_for_file: prefer_const_constructors

import 'package:challenge_motion/app/modules/shared/widgets/produk_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/produk_page_controller.dart';

class ProdukPageView extends GetView<ProdukPageController> {
  ProdukPageController produkPageController = Get.put(ProdukPageController());
  ProdukPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3FAF3),
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'List Produk',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                isDense: true,
                fillColor: Colors.white,
                hintText: 'Cari Produk',
                hintStyle: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black26,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Image.asset(
                  'assets/images/search-normal.png',
                  scale: 2,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF62C172),
        toolbarHeight: 140,
        automaticallyImplyLeading: false,
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('product').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Mohon tunggu...");
            }

            if (snapshot.hasData == false) {
              return Text("Tidak ada data...");
            }
            return GridView.builder(
              padding: EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 4),
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (BuildContext context, int index) {
                var document = snapshot.data!.docs[index];
                return ProdukCard(
                  id: document.id,
                  namaProduct: document['namaProduct'],
                  proses: document['proses'],
                );
              },
            );
          }),
    );
  }
}
