import 'package:challenge_motion/app/modules/kirim_permintaan/controllers/kirim_permintaan_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProdukCard extends StatelessWidget {
  ProdukCard(
      {super.key,
      required this.namaProduct,
      required this.proses,
      required this.id});
  final String namaProduct;
  final String id;
  final bool proses;

  KirimPermintaanController kirimPermintaanController =
      Get.put(KirimPermintaanController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFD1F3D1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Image.asset(
            'assets/images/brokoli.png',
            scale: 1.5,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namaProduct,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  proses ? const Text('Selesai') : const Text('Proses'),
                  const SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          kirimPermintaanController.handleDeleteProduk(id);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFFE35556),
                          ),
                        ),
                        child: Icon(
                          Icons.delete_forever_outlined,
                          color: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF74DA74),
                          ),
                        ),
                        child: Text(
                          'Detail',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
