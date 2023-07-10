import 'package:flutter/material.dart';
import 'package:flutter_learn/data/model/github_repo.dart';

class GithubRepoContainer extends StatelessWidget {
  const GithubRepoContainer({
    super.key,
    required this.githubRepo,
  });

  final GithubRepo githubRepo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8)),
      title: Text(
        githubRepo.name != null ? "${githubRepo.name}" : "",
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        githubRepo.description != null ? "${githubRepo.description}" : "",
        overflow: TextOverflow.ellipsis,
      ),
      leading: githubRepo.owner?.id != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                "https://avatars.githubusercontent.com/u/${githubRepo.owner?.id.toString()}?v=4",
                width: 40,
                height: 40,
              ),
            )
          : null,
    );
  }
}
