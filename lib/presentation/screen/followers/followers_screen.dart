import 'package:flutter/material.dart';
import 'package:flutter_learn/presentation/screen/followers/followers_screen_template.dart';
import 'package:get/get.dart';

class FollowersScreen extends StatelessWidget {
  const FollowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FollowersScreenTemplate(
      followersController: Get.find(),
    );
  }
}
