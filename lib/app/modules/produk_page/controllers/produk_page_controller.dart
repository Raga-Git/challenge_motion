import 'package:get/get.dart';
import 'package:challenge_motion/app/data/models/produk_model.dart';

class ProdukPageController extends GetxController {
  ProdukModel produkModel = ProdukModel(
    namaProduk: 'Brokoli',
    image: 'assets/images/brokoli.png',
    proses: true,
  );
}
