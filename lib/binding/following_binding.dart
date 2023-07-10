import 'package:flutter_learn/controller/following/following_controller.dart';
import 'package:flutter_learn/data/api/github_service.dart';
import 'package:flutter_learn/data/repository/github_repository_impl.dart';
import 'package:get/get.dart';

class FollowingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FollowingController>(
      () => FollowingController(
        githubRepository: GithubRepositoryImpl(
          service: GithubService.create(),
        ),
      ),
    );
  }
}
