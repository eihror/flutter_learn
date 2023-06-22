import 'package:flutter_learn/model/github_repo.dart';
import 'package:flutter_learn/model/github_user.dart';

abstract class GithubRepository {
  Future<GithubUser> fetchUserData(String name);

  Future<List<GithubRepo>> fetchUserRepoList(String name);
}
