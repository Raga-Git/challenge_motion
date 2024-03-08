import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kirim_permintaan/bindings/kirim_permintaan_binding.dart';
import '../modules/kirim_permintaan/views/kirim_permintaan_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';
import '../modules/produk_page/bindings/produk_page_binding.dart';
import '../modules/produk_page/views/produk_page_view.dart';
import '../modules/profile_page/bindings/profile_page_binding.dart';
import '../modules/profile_page/views/profile_page_view.dart';
import '../modules/riwayat_page/bindings/riwayat_page_binding.dart';
import '../modules/riwayat_page/views/riwayat_page_view.dart';
import '../modules/ubah_paswword__page/bindings/ubah_paswword_page_binding.dart';
import '../modules/ubah_paswword__page/views/ubah_paswword_page_view.dart';
import '../modules/ubah_profile__page/bindings/ubah_profile_page_binding.dart';
import '../modules/ubah_profile__page/views/ubah_profile_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NAVIGATION;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => NavigationView(),
      binding: NavigationBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT_PAGE,
      page: () => RiwayatPageView(),
      binding: RiwayatPageBinding(),
    ),
    GetPage(
      name: _Paths.PRODUK_PAGE,
      page: () => ProdukPageView(),
      binding: ProdukPageBinding(),
    ),
    GetPage(
      name: _Paths.UBAH_PROFILE_PAGE,
      page: () => UbahProfilePageView(),
      binding: UbahProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.UBAH_PASWWORD_PAGE,
      page: () => UbahPaswwordPageView(),
      binding: UbahPaswwordPageBinding(),
    ),
    GetPage(
      name: _Paths.KIRIM_PERMINTAAN,
      page: () => KirimPermintaanView(),
      binding: KirimPermintaanBinding(),
    ),
  ];
}
