import 'package:flutter_learn/controller/followers/followers_controller.dart';
import 'package:flutter_learn/data/api/github_service.dart';
import 'package:flutter_learn/data/repository/github_repository_impl.dart';
import 'package:get/get.dart';

class FollowersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FollowersController>(
      () => FollowersController(
        githubRepository: GithubRepositoryImpl(
          service: GithubService.create(),
        ),
      ),
    );
  }
}
