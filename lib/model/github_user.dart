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

  GithubUser({
    this.id,
    this.name,
    this.login,
    this.avatarUrl,
    this.bio,
    this.followers,
    this.following,
  });

  factory GithubUser.fromJson(Map<String, dynamic> json) =>
      _$GithubUserFromJson(json);

  Map<String, dynamic> toJson() => _$GithubUserToJson(this);
}
