import 'package:flutter_learn/data/repository/github_repository.dart';
import 'package:flutter_learn/presentation/domain/ui_result.dart';
import 'package:get/get.dart';

class FollowingVariable extends GetxController {
  dynamic args = Get.arguments;

  FollowingVariable({
    required this.githubRepository,
  });

  final GithubRepository githubRepository;

  final Rx<UiResult?> followingResult = Rx(null);
}
