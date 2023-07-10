import 'package:flutter_learn/binding/followers_binding.dart';
import 'package:flutter_learn/binding/following_binding.dart';
import 'package:flutter_learn/binding/home_binding.dart';
import 'package:flutter_learn/binding/public_repo_binding.dart';
import 'package:flutter_learn/presentation/screen/followers/followers_screen.dart';
import 'package:flutter_learn/presentation/screen/following/following_screen.dart';
import 'package:flutter_learn/presentation/screen/home/home_screen.dart';
import 'package:flutter_learn/presentation/screen/public_repo/public_repo_screen.dart';
import 'package:flutter_learn/routes/app_routes.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.publicRepos,
      page: () => const PublicRepoScreen(),
      transition: Transition.rightToLeft,
      binding: PublicRepoBinding(),
    ),
    GetPage(
      name: AppRoutes.followers,
      page: () => const FollowersScreen(),
      transition: Transition.rightToLeft,
      binding: FollowersBinding(),
    ),
    GetPage(
      name: AppRoutes.following,
      page: () => const FollowingScreen(),
      transition: Transition.rightToLeft,
      binding: FollowingBinding(),
    ),
  ];
}
