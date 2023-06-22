import 'package:flutter/material.dart';
import 'package:flutter_learn/github_screen_template.dart';
import 'package:get/get.dart';

class GithubScreen extends StatelessWidget {
  const GithubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GithubScreenTemplate(
      githubController: Get.find(),
    );
  }
}
