import 'package:challenge_motion/app/modules/home/views/home_view.dart';
import 'package:challenge_motion/app/modules/produk_page/views/produk_page_view.dart';
import 'package:challenge_motion/app/modules/profile_page/views/profile_page_view.dart';
import 'package:challenge_motion/app/modules/riwayat_page/views/riwayat_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
            child: IndexedStack(
          index: controller.tabIndex,
          children: [
            HomeView(),
            ProdukPageView(),
            RiwayatPageView(),
            ProfilePageView()
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          fixedColor: Color(0xFF17C118),
          unselectedItemColor: Colors.black38,
          type: BottomNavigationBarType.fixed,
          onTap: controller.changeTab,
          currentIndex: controller.tabIndex,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/beranda.png',
                  scale: 1.5,
                ),
                label: 'Beranda'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/produk.png",
                  scale: 1.5,
                ),
                label: 'Produk'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/riwayat.png",
                  scale: 1.5,
                ),
                label: 'Riwayat'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/profile_circle.png",
                  scale: 1.5,
                ),
                label: 'Profile'),
          ],
        ),
      );
    });
  }
}
