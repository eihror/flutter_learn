import 'package:flutter_learn/data/model/github_person.dart';
import 'package:flutter_learn/data/model/github_repo.dart';
import 'package:flutter_learn/data/model/github_user.dart';

abstract class GithubRepository {
  Future<GithubUser> fetchUserData(String name);

  Future<List<GithubRepo>> fetchUserRepositoryList(String name);

  Future<List<GithubPerson>> fetchUserFollowerList(String name);

  Future<List<GithubPerson>> fetchUserFollowingList(String name);
}
