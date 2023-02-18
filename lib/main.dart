import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/routes/routeName.dart';
import 'package:getx/routes/routes.dart';
import 'package:getx/services/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteName.home,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
