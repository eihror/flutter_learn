// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubPerson _$GithubPersonFromJson(Map<String, dynamic> json) => GithubPerson(
      id: json['id'] as int?,
      login: json['login'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      htmlUrl: json['html_url'] as String?,
    );

Map<String, dynamic> _$GithubPersonToJson(GithubPerson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
    };
