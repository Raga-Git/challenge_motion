import 'package:challenge_motion/app/data/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileCard extends StatelessWidget {
  final ProfileModel profileModel;
  const ProfileCard({
    super.key,
    required this.profileModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Nama Lengkap',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black38,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${profileModel.namaLengkap}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'Email',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black38,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${profileModel.email}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'Nomor telepon',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black38,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${profileModel.noTelepon}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'Alamat',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black38,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${profileModel.alamat}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(),
        const Text(
          'Keamanan',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black38,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              'Ubah Password',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            // GestureDetector(
            //     onTap: () {
            //       Get.to(UbahPaswwordPageView());
            //     },
            //     child: Icon(Icons.chevron_right_outlined))
          ],
        ),
        const Divider(),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
