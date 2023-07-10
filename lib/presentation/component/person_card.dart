import 'package:flutter/material.dart';
import 'package:flutter_learn/data/model/github_person.dart';

class PersonCard extends StatelessWidget {
  final GithubPerson person;
  final Function(String url) onItemClickListener;

  const PersonCard({
    super.key,
    required this.person,
    required this.onItemClickListener,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          if (person.htmlUrl != null) {
            onItemClickListener(person.htmlUrl!);
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: person.avatarUrl != null,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  "${person.avatarUrl}",
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            Text("${person.login}"),
          ],
        ),
      ),
    );
  }
}
