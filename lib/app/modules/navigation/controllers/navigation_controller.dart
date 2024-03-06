import 'package:get/get.dart';

class NavigationController extends GetxController {
  var tabIndex = 0;
  void changeTab(int idx) {
    tabIndex = idx;
    update();
  }
}
