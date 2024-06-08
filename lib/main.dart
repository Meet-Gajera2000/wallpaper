import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallpaper/home_screen.dart';
import 'package:wallpaper/naviget_page.dart';
import 'package:wallpaper/profile_screen.dart';
import 'package:wallpaper/splach_sceen.dart';
import 'package:wallpaper/update_profile_screen.dart';

SharedPreferences? pref;
Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: naviget_Page(),
    );
  }
}

