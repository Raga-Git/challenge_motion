import 'package:challenge_motion/app/modules/ubah_profile__page/views/ubah_profile_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../data/models/profile_model.dart';
import '../../shared/widgets/profile_card.dart';
import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({Key? key}) : super(key: key);
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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Natalie Diva',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'nataliediva@gmail.com',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            const Spacer(),
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
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32, 48, 16, 16),
        child: Row(
          children: [
            const SizedBox(
              height: 32,
            ),
            ProfileCard(profileModel: controller.profileModel),
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
