import 'package:challenge_motion/app/modules/navigation/views/navigation_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/kirim_permintaan_controller.dart';

class KirimPermintaanView extends GetView<KirimPermintaanController> {
  KirimPermintaanController kirimPermintaanController =
      Get.put(KirimPermintaanController());
  KirimPermintaanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFF3FAF3),
        appBar: AppBar(
          title: Text(
            'Kirim Permintaan',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
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
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Foto Produk',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(color: Colors.white),
                child: Image.asset(
                  'assets/images/camera.png',
                  scale: 2,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Nama Produk',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: controller.nameC,
                decoration: InputDecoration(isDense: true),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Deskripsi Produk',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Produk Fresh dan Menyenangkan',
                style: GoogleFonts.poppins(),
              ),
              Divider(
                color: Colors.black45,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Kategori',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Sayuran',
                style: GoogleFonts.poppins(),
              ),
              Divider(
                color: Colors.black45,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Harga',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Rp50.000',
                style: GoogleFonts.poppins(),
              ),
              Divider(
                color: Colors.black45,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Jumlah',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '1',
                style: GoogleFonts.poppins(),
              ),
              Divider(
                color: Colors.black45,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Durasi Tahan',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '2-4 hari',
                style: GoogleFonts.poppins(),
              ),
              Divider(
                color: Colors.black45,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  controller.handleAddProduk(controller.nameC.text);
                  Get.to(NavigationView());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF74DA74),
                  minimumSize: Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Kirim',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ));
  }
}
