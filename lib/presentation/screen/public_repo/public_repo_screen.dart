import 'package:flutter/material.dart';
import 'package:flutter_learn/presentation/screen/public_repo/public_repo_screen_template.dart';
import 'package:get/get.dart';

class PublicRepoScreen extends StatelessWidget {
  const PublicRepoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PublicRepoScreenTemplate(
      publicRepoController: Get.find(),
    );
  }
}
