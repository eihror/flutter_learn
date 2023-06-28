import 'package:flutter_learn/api/github_service.dart';
import 'package:flutter_learn/controller/github_controller.dart';
import 'package:flutter_learn/repository/github_repository_impl.dart';
import 'package:get/get.dart';

class GithubBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GithubController>(
      () => GithubController(
        githubRepository: GithubRepositoryImpl(
          githubService: GithubService.create(),
        ),
      ),
    );
  }
}
