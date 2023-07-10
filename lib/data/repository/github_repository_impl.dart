import 'package:flutter_learn/data/api/github_service.dart';
import 'package:flutter_learn/data/model/github_person.dart';
import 'package:flutter_learn/data/model/github_repo.dart';
import 'package:flutter_learn/data/model/github_user.dart';
import 'package:flutter_learn/data/repository/github_repository.dart';

class GithubRepositoryImpl implements GithubRepository {
  GithubRepositoryImpl({
    required this.service,
  });

  final GithubService service;

  @override
  Future<GithubUser> fetchUserData(String name) =>
      service.fetchGithubUser(name);

  @override
  Future<List<GithubRepo>> fetchUserRepositoryList(String name) =>
      service.fetchGithubRepositories(name);

  @override
  Future<List<GithubPerson>> fetchUserFollowerList(String name) =>
      service.fetchGithubFollowers(name);

  @override
  Future<List<GithubPerson>> fetchUserFollowingList(String name) =>
      service.fetchGithubFollowing(name);
}
