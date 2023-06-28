// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubUser _$GithubUserFromJson(Map<String, dynamic> json) => GithubUser(
      id: json['id'] as int?,
      name: json['name'] as String?,
      login: json['login'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      bio: json['bio'] as String?,
      followers: json['followers'] as int?,
      following: json['following'] as int?,
    );

Map<String, dynamic> _$GithubUserToJson(GithubUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'bio': instance.bio,
      'followers': instance.followers,
      'following': instance.following,
    };
