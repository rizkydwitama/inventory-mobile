import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_mobile/routes/app_pages.dart';
import 'package:inventory_mobile/routes/app_routes.dart';
import 'package:inventory_mobile/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.listItem,
      getPages: AppPages.getPages,
      theme: AppTheme.buildThemeData(),
    );
  }
}
