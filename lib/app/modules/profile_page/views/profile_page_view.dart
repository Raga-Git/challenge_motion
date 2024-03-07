import 'package:challenge_motion/app/data/models/profile_model.dart';
import 'package:challenge_motion/app/modules/shared/widgets/profile_card.dart';
import 'package:challenge_motion/app/modules/ubah_profile__page/views/ubah_profile_page_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  ProfilePageView({Key? key}) : super(key: key);

  ProfilePageController profilePageController =
      Get.put(ProfilePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/fotoProfile.png",
              ),
              radius: 40,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Natalie Diva',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'nataliediva@gmail.com',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Get.to(UbahProfilePageView());
              },
              child: Image.asset(
                'assets/images/edit.png',
                scale: 2,
              ),
            ),
            const SizedBox(
              width: 16,
            )
          ],
        ),
        backgroundColor: const Color(0xFF62C172),
        toolbarHeight: 140,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32, 32, 16, 16),
        child: Column(
          children: [
            StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('Profile').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text("Mohon tunggu...");
                }

                if (!snapshot.hasData) {
                  return Text("Tidak ada data...");
                }

                //.doc('L8a0cNMdTBuwSo6mCEjh')
                return ProfileCard(
                  profileModel: ProfileModel(
                    id: snapshot.data!.docs.first.id,
                    namaLengkap: snapshot.data?.docs.first['namaLengkap'],
                    email: snapshot.data?.docs.first['email'],
                    alamat: snapshot.data?.docs.first['alamat'],
                    noTelepon: snapshot.data?.docs.first['noTelepon'],
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logout.png',
                  scale: 1.5,
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  'Log Out',
                  style: TextStyle(fontSize: 14, color: Color(0xFF129B29)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
