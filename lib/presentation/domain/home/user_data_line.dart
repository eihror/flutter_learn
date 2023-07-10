import 'package:flutter_learn/presentation/domain/screen_page.dart';

class UserDataLine {
  final int quantity;
  final String description;
  final ScreenPage screenPage;

  UserDataLine({
    required this.quantity,
    required this.description,
    required this.screenPage,
  });
}
