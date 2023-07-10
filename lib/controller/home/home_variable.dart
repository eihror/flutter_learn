import 'dart:async';

import 'package:flutter_learn/data/repository/github_repository.dart';
import 'package:flutter_learn/presentation/domain/ui_result.dart';
import 'package:get/get.dart';

class HomeVariable extends GetxController {
  HomeVariable({
    required this.githubRepository,
  });

  final GithubRepository githubRepository;

  final Rx<UiResult?> userResult = Rx(null);

  Timer? textFieldSearchDebounce;
  String? textSearched;
}
