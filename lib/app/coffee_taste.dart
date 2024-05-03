import 'package:coffee_taste/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoffeeTaste extends StatelessWidget {
  final String initialRoute;

  const CoffeeTaste({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Freebie",
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("fr"),
      initialRoute: initialRoute,
      getPages: AppPages.routes,
    );
  }
}
