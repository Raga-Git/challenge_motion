import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class KirimPermintaanController extends GetxController {
  late TextEditingController nameC;
  void handleAddProduk(String name) {
    final newProduk = {
      'namaProduct': name,
      'proses': false,
    };
    FirebaseFirestore.instance.collection('product').doc().set(newProduk);
    nameC.clear();
  }

  void handleDeleteProduk(String id) {
    FirebaseFirestore.instance.collection('product').doc(id).delete();
  }

  @override
  void onInit() {
    nameC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    nameC.dispose();
    super.onClose();
  }
}
