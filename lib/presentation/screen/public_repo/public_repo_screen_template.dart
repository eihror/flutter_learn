import 'package:flutter/material.dart';
import 'package:flutter_learn/controller/public_repo/public_repo_controller.dart';
import 'package:flutter_learn/data/model/github_repo.dart';
import 'package:flutter_learn/presentation/component/repo/github_repo_container.dart';
import 'package:flutter_learn/presentation/domain/ui_result.dart';
import 'package:get/get.dart';

class PublicRepoScreenTemplate extends StatelessWidget {
  const PublicRepoScreenTemplate({
    super.key,
    required this.publicRepoController,
  });

  final PublicRepoController publicRepoController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Obx(() {
              final Widget widgetResult;
              var repoResultValue = publicRepoController.repoResult.value;

              if (repoResultValue is Loading) {
                widgetResult = Text("Loading");
              } else if (repoResultValue is Success<List<GithubRepo>> &&
                  repoResultValue.data != null) {
                widgetResult = Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: repoResultValue.data!.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: (index == 0)
                              ? const EdgeInsets.only(bottom: 4)
                              : (index == repoResultValue.data!.length - 1)
                                  ? const EdgeInsets.only(top: 4, bottom: 8)
                                  : const EdgeInsets.only(top: 4, bottom: 4),
                          child: GithubRepoContainer(
                              githubRepo: repoResultValue.data![index]),
                        );
                      },
                    ),
                  ),
                );
              } else if (repoResultValue is Error) {
                widgetResult = Text("Error");
              } else {
                widgetResult = SizedBox(height: 0);
              }

              return widgetResult;
            }),
          ],
        ),
      ),
    );
  }
}
