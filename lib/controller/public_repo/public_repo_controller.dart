import 'package:flutter_learn/controller/public_repo/public_repo_variable.dart';
import 'package:flutter_learn/presentation/domain/ui_result.dart';

class PublicRepoController extends PublicRepoVariable {
  PublicRepoController({
    required super.githubRepository,
  });

  @override
  void onInit() {
    super.onInit();
    searchForGithubRepositories(args);
  }

  Future<void> searchForGithubRepositories(String user) async {
    try {
      repoResult.value = Loading();
      var request = await githubRepository.fetchUserRepositoryList(user);
      repoResult.value = Success(data: request);
    } catch (e) {
      if (e is Error) {
        repoResult.value = Error(error: e);
      }
    }
  }
}
