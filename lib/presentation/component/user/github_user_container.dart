import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/presentation/component/home/two_buttons_inline.dart';
import 'package:flutter_learn/presentation/domain/home/user_model.dart';
import 'package:flutter_learn/presentation/domain/screen_page.dart';

class GithubUserContainer extends StatelessWidget {
  final UserModel user;
  final Function(ScreenPage) onItemClickListener;

  const GithubUserContainer({
    super.key,
    required this.user,
    required this.onItemClickListener,
  });

  @override
  Widget build(BuildContext context) {
    var userDataLineSlice = user.userDataLineList.slices(2);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Visibility(
                  visible: user.avatarUrl.isNotEmpty,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.network(
                      user.avatarUrl,
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                    top: 8,
                    bottom: 4,
                  ),
                  child: Text("${user.name} (${user.login})"),
                ),
                Visibility(
                  visible: user.bio.isNotEmpty,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 4,
                      bottom: 8,
                    ),
                    child: Text(
                      user.bio.toString(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        TwoButtonsInline(
          list: userDataLineSlice.first,
          onClickItemListener: onItemClickListener,
        ),
        TwoButtonsInline(
          list: userDataLineSlice.last,
          onClickItemListener: onItemClickListener,
        ),
      ],
    );
  }
}
