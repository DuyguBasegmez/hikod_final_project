import 'dart:ui';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'db_functions.dart';
import 'user_model.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Column(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 10),
                  child: Container(
                    height: 450,
                    width: 350,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.green.shade100.withOpacity(0.3),
                        border: Border.all(
                            color: Colors.transparent.withOpacity(0.1),
                            width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        const SizedBox(height: 50),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'E-posta',
                            hintStyle: TextStyle(
                                color: Colors.black38, fontSize: 18),
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
                                color: Colors.black38, fontSize: 18),
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          controller: _confirmPasswordController,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'Şifreyi Onayla',
                            hintStyle: TextStyle(
                                color: Colors.black38, fontSize: 18),
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                        const SizedBox(height: 50),
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                              validateSignup();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green.shade200.withOpacity(0.9),
                            ),
                            child: const Text(
                              'Kaydol',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Zaten hesabınız var mı? ',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                'Giriş Yapın',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
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
    );
  }

  void validateSignup() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final confirmPassword = _confirmPasswordController.text.trim();

    final isEmailValidated = EmailValidator.validate(email);
    if (email != '' && password != '' && confirmPassword != '') {
      if (isEmailValidated == true) {
        final isPasswordValidated = checkPassword(password, confirmPassword);
        if (isPasswordValidated == true) {
          final user = UserModel(email: email, password: password);
          await DBFunctions.instance.userSignup(user);
          Get.back();
          Get.snackbar('Başarılı', 'Hesap oluşturuldu');

          print('Başarılı');
        }
      } else {
        Get.snackbar('Hata', 'Lütfen uygun bir e-posta adresi giriniz',
            colorText: Colors.red, backgroundColor: Colors.white);
      }
    } else {
      Get.snackbar('Hata', 'Bu alanlar boş bırakılamaz',
          backgroundColor: Colors.white, colorText: Colors.red);
    }
  }

  bool checkPassword(String pass, String confPpass) {
    if (pass == confPpass) {
      if (pass.length < 6) {
        Get.snackbar('Hata', 'Şifre 6 karakterden daha uzun olmalıdır.',
            backgroundColor: Colors.white, colorText: Colors.red);
        return false;
      } else {
        return true;
      }
    } else {
      Get.snackbar(
          'Şifre Uyuşmuyor', 'Şifre ile şifreyi onayla alanları aynı değil',
          backgroundColor: Colors.white, colorText: Colors.red);
      return false;
    }
  }
}
