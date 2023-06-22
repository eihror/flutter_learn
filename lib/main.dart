import 'package:flutter/material.dart';
import 'package:flutter_learn/routes/app_pages.dart';
import 'package:flutter_learn/routes/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FlutterLearn());
}

class FlutterLearn extends StatefulWidget {
  const FlutterLearn({super.key});

  @override
  State<FlutterLearn> createState() => _FlutterLearnState();
}

class _FlutterLearnState extends State<FlutterLearn> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(),
      getPages: AppPages.routes,
      initialRoute: AppRoutes.main,
    );
  }
}
