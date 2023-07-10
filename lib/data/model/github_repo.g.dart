// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubRepo _$GithubRepoFromJson(Map<String, dynamic> json) => GithubRepo(
      id: json['id'] as int?,
      name: json['name'] as String?,
      fullName: json['full_name'] as String?,
      description: json['description'] as String?,
      owner: json['owner'] == null
          ? null
          : GithubOwner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GithubRepoToJson(GithubRepo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'description': instance.description,
      'owner': instance.owner,
    };
