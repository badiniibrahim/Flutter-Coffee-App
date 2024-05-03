import 'package:coffee_taste/app/coffee_taste.dart';
import 'package:flutter/material.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  final String initialRoute = await Routes.INITIAL;
  runApp(CoffeeTaste(initialRoute: initialRoute));
}
