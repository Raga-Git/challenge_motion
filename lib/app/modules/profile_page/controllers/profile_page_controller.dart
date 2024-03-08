import 'package:challenge_motion/app/data/models/profile_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ProfilePageController extends GetxController {
  // final CollectionReference profileCollection =
  //     FirebaseFirestore.instance.collection('Profile');

  // late RxList<ProfileModel> profiles = RxList<ProfileModel>();

  // @override
  // void onInit() {
  //   super.onInit();
  //   profiles.bindStream(_fetchProfiles());
  // }

  // Stream<List<ProfileModel>> _fetchProfiles() {
  //   return profileCollection.snapshots().map((snapshot) {
  //     return snapshot.docs.map((doc) {
  //       return ProfileModel(
  //         id: doc.id,
  //         namaLengkap: doc['namaLengkap'],
  //         email: doc['email'],
  //         noTelepon: doc['noTelepon'],
  //         alamat: doc['alamat'],
  //       );
  //     }).toList();
  //   });
  // }
}
