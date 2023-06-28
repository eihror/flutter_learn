import 'dart:async';

import 'package:flutter_learn/domain/ui_result.dart';
import 'package:flutter_learn/repository/github_repository.dart';
import 'package:get/get.dart';

class GithubController extends GetxController {
  GithubController({
    required this.githubRepository,
  });

  final GithubRepository githubRepository;

  Rx<UiResult?> userResult = Rx(null);
  Rx<UiResult?> repoResult = Rx(null);

  Timer? _textFieldSearchDebounce;

  void onTextChanged(String text) {
    if (_textFieldSearchDebounce?.isActive ?? false) {
      _textFieldSearchDebounce?.cancel();
    }
    _textFieldSearchDebounce = Timer(const Duration(milliseconds: 500), () {
      if (text.isNotEmpty) {
        searchForGithubUser(text);
        searchForGithubRepositories(text);
      } else {
        userResult.value = null;
        repoResult.value = null;
      }
    });
  }

  Future<void> searchForGithubUser(String user) async {
    try {
      userResult.value = Loading();
      var request = await githubRepository.fetchUserData(user);
      userResult.value = Success(data: request);
    } catch (e) {
      if (e is Error) {
        userResult.value = Error(error: e);
      }
    }
  }
  
  Future<void> searchForGithubRepositories(String user) async {
    try {
      repoResult.value = Loading();
      var request = await githubRepository.fetchUserRepoList(user);
      repoResult.value = Success(data: request);
    } catch (e) {
      if (e is Error) {
        repoResult.value = Error(error: e);
      }
    }
  }
}
