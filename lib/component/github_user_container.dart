import 'package:flutter/material.dart';
import 'package:flutter_learn/model/github_user.dart';

class GithubUserContainer extends StatelessWidget {
  const GithubUserContainer({
    super.key,
    required this.user,
  });

  final GithubUser user;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.network(
                user.avatarUrl.toString(),
                width: 200,
                height: 200,
              ),
            ),
            Text("${user.name} (${user.login})"),
            Text(user.bio.toString()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Followers"),
                    Text("${user.followers}"),
                  ],
                ),
                Column(
                  children: [
                    Text("Followings"),
                    Text("${user.following}"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
