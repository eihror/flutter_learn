import 'package:json_annotation/json_annotation.dart';

part 'github_person.g.dart';

@JsonSerializable()
class GithubPerson {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "login")
  String? login;
  @JsonKey(name: "avatar_url")
  String? avatarUrl;
  @JsonKey(name: "html_url")
  String? htmlUrl;

  GithubPerson({
    this.id,
    this.login,
    this.avatarUrl,
    this.htmlUrl,
  });

  factory GithubPerson.fromJson(Map<String, dynamic> json) =>
      _$GithubPersonFromJson(json);

  Map<String, dynamic> toJson() => _$GithubPersonToJson(this);
}
