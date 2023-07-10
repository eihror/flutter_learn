import 'package:flutter_learn/controller/public_repo/public_repo_controller.dart';
import 'package:flutter_learn/data/api/github_service.dart';
import 'package:flutter_learn/data/repository/github_repository_impl.dart';
import 'package:get/get.dart';

class PublicRepoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PublicRepoController>(
      () => PublicRepoController(
        githubRepository: GithubRepositoryImpl(
          service: GithubService.create(),
        ),
      ),
    );
  }
}
