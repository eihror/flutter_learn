import 'package:flutter_learn/api/github_service.dart';
import 'package:flutter_learn/model/github_repo.dart';
import 'package:flutter_learn/model/github_user.dart';
import 'package:flutter_learn/repository/github_repository.dart';

class GithubRepositoryImpl implements GithubRepository {
  GithubRepositoryImpl({
    required this.githubService,
  });

  final GithubService githubService;

  @override
  Future<GithubUser> fetchUserData(String name) =>
      githubService.fetchGithubUser(name);

  @override
  Future<List<GithubRepo>> fetchUserRepoList(String name) =>
      githubService.fetchGithubRepo(name);
}
