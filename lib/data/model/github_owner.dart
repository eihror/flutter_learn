import 'package:json_annotation/json_annotation.dart';

part 'github_owner.g.dart';

@JsonSerializable()
class GithubOwner {
  @JsonKey(name: "id")
  int? id;

  GithubOwner({
    this.id,
  });

  factory GithubOwner.fromJson(Map<String, dynamic> json) =>
      _$GithubOwnerFromJson(json);

  Map<String, dynamic> toJson() => _$GithubOwnerToJson(this);
}
