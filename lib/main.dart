import 'package:cryto_wallet/app/core/const/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        // primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: AppColor.background, foregroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.black,
      ),
    ),
  );
}
