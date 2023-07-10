import 'package:flutter/material.dart';
import 'package:flutter_learn/presentation/screen/following/following_screen_template.dart';
import 'package:get/get.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FollowingScreenTemplate(followingController: Get.find());
  }
}
