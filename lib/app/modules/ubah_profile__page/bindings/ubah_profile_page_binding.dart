import 'package:get/get.dart';

import '../controllers/ubah_profile_page_controller.dart';

class UbahProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UbahProfilePageController>(
      () => UbahProfilePageController(),
    );
  }
}
