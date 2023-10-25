import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hikodfinalproject/login_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';
import 'registration.dart';
import 'user_model.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());
  await Hive.openBox<UserModel>('user');

  runApp(
    ChangeNotifierProvider(
      create: (_) => RegistrationList(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginScreen(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[200]),
    );
  }
}