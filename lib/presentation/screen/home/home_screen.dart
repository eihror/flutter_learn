import 'package:flutter/material.dart';
import 'package:flutter_learn/presentation/screen/home/home_screen_template.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreenTemplate(
      homeController: Get.find(),
    );
  }
}
