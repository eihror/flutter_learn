import 'package:flutter/material.dart';

class UserSearchBar extends StatelessWidget {
  final Function(String) onTextChangedListener;

  const UserSearchBar({
    super.key,
    required this.onTextChangedListener,
  });

  @override
  Widget build(BuildContext context) {
    var inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.black,
        width: 1,
      ),
    );

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onChanged: onTextChangedListener,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            enabledBorder: inputBorder,
            focusedBorder: inputBorder,
            suffixIcon: const Icon(Icons.search),
            suffixIconColor: Colors.black,
            hintText: "Search for github user",
          ),
        ),
      ),
    );
  }
}
