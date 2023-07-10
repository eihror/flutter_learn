import 'package:flutter_learn/presentation/domain/home/user_data_line.dart';
import 'package:flutter_learn/presentation/domain/home/user_model.dart';
import 'package:flutter_learn/presentation/domain/screen_page.dart';
import 'package:json_annotation/json_annotation.dart';

part 'github_user.g.dart';

@JsonSerializable()
class GithubUser {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "login")
  String? login;
  @JsonKey(name: "avatar_url")
  String? avatarUrl;
  @JsonKey(name: "bio")
  String? bio;
  @JsonKey(name: "followers")
  int? followers;
  @JsonKey(name: "following")
  int? following;
  @JsonKey(name: "public_repos")
  int? publicRepos;
  @JsonKey(name: "public_gists")
  int? publicGists;

  GithubUser({
    this.id,
    this.name,
    this.login,
    this.avatarUrl,
    this.bio,
    this.followers,
    this.following,
    this.publicRepos,
    this.publicGists,
  });

  factory GithubUser.fromJson(Map<String, dynamic> json) =>
      _$GithubUserFromJson(json);

  Map<String, dynamic> toJson() => _$GithubUserToJson(this);

  UserModel toUserModel() => UserModel(
        id: (id != null) ? id! : 0,
        name: (name != null) ? name! : "",
        login: (login != null) ? login! : "",
        avatarUrl: (avatarUrl != null) ? avatarUrl! : "",
        bio: (bio != null) ? bio! : "",
        userDataLineList: [
          UserDataLine(
            quantity: (followers != null) ? followers! : 0,
            description: "Followers",
            screenPage: Followers(),
          ),
          UserDataLine(
              quantity: (following != null) ? following! : 0,
              description: "Following",
              screenPage: Following()),
          UserDataLine(
              quantity: (publicRepos != null) ? publicRepos! : 0,
              description: "Public repos",
              screenPage: PublicRepos()),
          UserDataLine(
              quantity: (publicGists != null) ? publicGists! : 0,
              description: "Public gists",
              screenPage: PublicGists()),
        ],
      );
}
