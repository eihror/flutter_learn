import 'package:flutter_learn/data/api/github_service.dart';
import 'package:flutter_learn/controller/home/home_controller.dart';
import 'package:flutter_learn/data/repository/github_repository_impl.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        githubRepository: GithubRepositoryImpl(
          service: GithubService.create(),
        ),
      ),
    );
  }
}
