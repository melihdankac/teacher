import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher/pages/emty_page.dart';
import 'dart:math';

import 'package:teacher/pages/read_qr_code_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Ahmet Koçoğlu'),
            accountEmail: const Text('akocoglu@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://media-exp1.licdn.com/dms/image/C4E03AQEqnneeahB9Hw/profile-displayphoto-shrink_800_800/0/1598080064008?e=1652918400&v=beta&t=fEaMedwS4vUKbSKEe2xvlY4T154aBHc6_w-9q7-_s2k',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text('Giriş'),
            onTap: () => Get.to(const EmptyPage(), arguments: {
              'id': Random().nextInt(1000).toString()
            }),
          ),
          ListTile(
            leading: const Icon(Icons.qr_code),
            title: const Text('QR Kod Oku'),
            onTap: () => Get.to(const ReadQRCodePage(), arguments: {
              'id': Random().nextInt(1000).toString()
            }),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Ayarlar'),
            onTap: () => Get.to(const EmptyPage(), arguments: {
              'id': Random().nextInt(1000).toString()
            }),
          ),
          const Divider(),
          ListTile(
            title: const Text('Çıkış'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () => Get.to(const EmptyPage(), arguments: {
              'id': Random().nextInt(1000).toString()
            }),
          ),
        ],
      ),
    );
  }
}
