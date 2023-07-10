import 'package:flutter_learn/data/model/github_owner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'github_repo.g.dart';

@JsonSerializable()
class GithubRepo {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "full_name")
  String? fullName;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "owner")
  GithubOwner? owner;

  GithubRepo({
    this.id,
    this.name,
    this.fullName,
    this.description,
    this.owner,
  });

  factory GithubRepo.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoFromJson(json);

  Map<String, dynamic> toJson() => _$GithubRepoToJson(this);
}
