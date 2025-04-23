import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/siswalogincontroller.dart';

class SiswaLoginView extends StatelessWidget {
  const SiswaLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SiswaLoginController());

    return Scaffold(
      appBar: AppBar(title: const Text('Login Siswa')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) => controller.username.value = value,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 16),
            TextField(
              onChanged: (value) => controller.password.value = value,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                controller.loginSiswa();
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
