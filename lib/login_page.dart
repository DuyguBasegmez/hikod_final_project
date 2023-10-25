import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hikodfinalproject/signup_page.dart';
import 'db_functions.dart';
import 'user_model.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Positioned(
                top: 30,
                left: (MediaQuery.of(context).size.width - 200) / 2,
                child: Image.asset(
                  'images/assets/hey.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
              Positioned(
                top: 200,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 4),
                      child: Container(
                        height: 600,
                        width: 350,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.green.shade100.withOpacity(0.3),
                          border: Border.all(
                            color: Colors.transparent.withOpacity(.1),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 50),
                            Text(
                              "DÖNÜŞTÜR TÜRKİYE",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 30),
                            TextField(
                              controller: _emailController,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              decoration: const InputDecoration(
                                hintText: 'E-posta',
                                hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18,
                                ),
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextField(
                              obscureText: true,
                              obscuringCharacter: '*',
                              controller: _passwordController,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                              decoration: const InputDecoration(
                                hintText: 'Şifre',
                                hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18,
                                ),
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            ),
                            const SizedBox(height: 50),
                            SizedBox(
                              height: 50,
                              width: 200,
                              child: ElevatedButton(
                                onPressed: () async {
                                  final list = await DBFunctions.instance.getUsers();
                                  userController(list);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green.shade200.withOpacity(0.9),
                                ),
                                child: const Text(
                                  'Giriş Yap',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                            TextButton(
                              onPressed: () {
                                Get.to(() => SignupScreen(),
                                );
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Hesabınız yok mu? ',
                                    style: TextStyle(color: Colors.black38),
                                  ),
                                  Text(
                                    'Kaydol',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> userController(List<UserModel> kullaniciListesi) async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    bool kullaniciBulundu = false;
    final dogrulandi = await validateLogin(email, password);
    if (dogrulandi == true) {
      await Future.forEach(kullaniciListesi, (kullanici) {
        if (kullanici.email == email && kullanici.password == password) {
          kullaniciBulundu = true;
        } else {
          kullaniciBulundu = false;
        }
      });
      if (kullaniciBulundu == true) {
        Get.offAll(() => HomeScreen(email: email));
        Get.snackbar(
          'Başarılı',
          '$email olarak giriş yapıldı',
        );
      } else {
        Get.snackbar('Hata', 'E-posta veya şifre yanlış',
            colorText: Colors.red, backgroundColor: Colors.white);
      }
    } else {
      Get.snackbar('Hata', 'Alanlar boş bırakılamaz',
          colorText: Colors.red, backgroundColor: Colors.white);
    }
  }

  Future<bool> validateLogin(String email, String password) async {
    if (email != '' && password != '') {
      return true;
    } else {
      return false;
    }
  }
}
