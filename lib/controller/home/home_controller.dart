import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_learn/controller/home/home_variable.dart';
import 'package:flutter_learn/presentation/domain/screen_page.dart';
import 'package:flutter_learn/presentation/domain/ui_result.dart';
import 'package:flutter_learn/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeController extends HomeVariable {
  HomeController({
    required super.githubRepository,
  });

  void onTextChanged(String text) {
    if (textFieldSearchDebounce?.isActive ?? false) {
      textFieldSearchDebounce?.cancel();
    }
    textFieldSearchDebounce = Timer(const Duration(milliseconds: 500), () {
      if (text.isNotEmpty) {
        textSearched = text;
        searchForGithubUser(text);
      } else {
        textSearched = null;
        userResult.value = null;
      }
    });
  }

  Future<void> searchForGithubUser(String user) async {
    try {
      userResult.value = Loading();
      var request = await githubRepository.fetchUserData(user);
      var map = request.toUserModel();

      userResult.value = Success(data: map);
    } catch (e) {
      if (e is Error) {
        userResult.value = Error(error: e);
      }
    }
  }

  void navigateScreen(ScreenPage screenPage) {
    if (textSearched != null) {
      final String pagePath;

      switch (screenPage) {
        case Followers():
          pagePath = AppRoutes.followers;
          break;
        case Following():
          pagePath = AppRoutes.following;
          break;
        case PublicRepos():
          pagePath = AppRoutes.publicRepos;
          break;
        case PublicGists():
          pagePath = AppRoutes.publicRepos;
          break;
      }

      FocusManager.instance.primaryFocus?.unfocus();

      Get.toNamed(
        pagePath,
        arguments: textSearched!,
      );
    }
  }
}
