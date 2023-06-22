import 'package:flutter/material.dart';
import 'package:flutter_learn/component/github_repo_container.dart';
import 'package:flutter_learn/component/github_user_container.dart';
import 'package:flutter_learn/controller/github_controller.dart';
import 'package:flutter_learn/domain/ui_result.dart';
import 'package:flutter_learn/model/github_repo.dart';
import 'package:flutter_learn/model/github_user.dart';
import 'package:get/get.dart';

class GithubScreenTemplate extends StatelessWidget {
  const GithubScreenTemplate({
    super.key,
    required this.githubController,
  });

  final GithubController githubController;

  @override
  Widget build(BuildContext context) {
    var inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.black,
        width: 1,
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: githubController.onTextChanged,
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
            ),
            Obx(() {
              final Widget widgetResult;
              var userResultValue = githubController.userResult.value;

              if (userResultValue is Loading) {
                widgetResult = Text("Loading");
              } else if (userResultValue is Success<GithubUser>) {
                widgetResult = GithubUserContainer(user: userResultValue.data!);
              } else if (userResultValue is Error) {
                widgetResult = Text("Error");
              } else {
                widgetResult = SizedBox(height: 0);
              }

              return widgetResult;
            }),
            Obx(() {
              final Widget widgetResult;
              var repoResultValue = githubController.repoResult.value;

              if (repoResultValue is Loading) {
                widgetResult = Text("Loading");
              } else if (repoResultValue is Success<List<GithubRepo>> && repoResultValue.data != null) {
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
                              : (index == 10 - 1)
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
            })
          ],
        ),
      ),
    );
  }
}
