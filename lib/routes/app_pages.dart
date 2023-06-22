import 'package:flutter_learn/binding/github_binding.dart';
import 'package:flutter_learn/github_screen.dart';
import 'package:flutter_learn/routes/app_routes.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.main,
      page: () => const GithubScreen(),
      binding: GithubBinding(),
    )
  ];
}
