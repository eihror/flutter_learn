import 'package:flutter_learn/presentation/domain/home/user_data_line.dart';

class UserModel {
  final int id;
  final String name;
  final String login;
  final String avatarUrl;
  final String bio;
  final List<UserDataLine> userDataLineList;

  UserModel({
    required this.id,
    required this.name,
    required this.login,
    required this.avatarUrl,
    required this.bio,
    required this.userDataLineList,
  });
}
