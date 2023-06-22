import 'package:flutter/material.dart';
import 'package:flutter_learn/model/github_repo.dart';

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
      title: Text("${githubRepo.name}"),
      subtitle: Text(
        "${githubRepo.description}",
        overflow: TextOverflow.ellipsis,
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.network(
          "https://avatars.githubusercontent.com/u/${githubRepo.owner?.id.toString()}?v=4",
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}
