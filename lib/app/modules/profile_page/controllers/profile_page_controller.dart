import 'package:challenge_motion/app/data/models/profile_model.dart';
import 'package:get/get.dart';

class ProfilePageController extends GetxController {
  final profilePageController = ProfilePageController();
  ProfileModel profileModel = ProfileModel(
    fotoProfile: 'fotoProfile',
    namaLengkap: 'Natalie',
    email: 'nataliediva',
    noTelepon: '081234567890',
    alamat: 'sukapura',
  );
}
