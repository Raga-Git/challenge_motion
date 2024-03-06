import 'package:get/get.dart';

import '../controllers/ubah_paswword_page_controller.dart';

class UbahPaswwordPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UbahPaswwordPageController>(
      () => UbahPaswwordPageController(),
    );
  }
}
