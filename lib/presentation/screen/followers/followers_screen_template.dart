import 'package:flutter/material.dart';
import 'package:flutter_learn/controller/followers/followers_controller.dart';
import 'package:flutter_learn/data/model/github_person.dart';
import 'package:flutter_learn/presentation/component/person_card.dart';
import 'package:flutter_learn/presentation/domain/ui_result.dart';
import 'package:get/get.dart';

class FollowersScreenTemplate extends StatelessWidget {
  const FollowersScreenTemplate({
    super.key,
    required this.followersController,
  });

  final FollowersController followersController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(
            () {
              final Widget? widgetResult;
              var userResultValue = followersController.followersResult.value;

              if (userResultValue is Loading) {
                widgetResult = Text("Loading");
              } else if (userResultValue is Success<List<GithubPerson>>) {
                widgetResult = GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      crossAxisCount: 2,
                      mainAxisExtent: 200,
                    ),
                    children: userResultValue.data!.map((element) {
                      return PersonCard(
                        person: element,
                        onItemClickListener: (url) {
                          followersController.openPersonPage(url);
                        },
                      );
                    }).toList());
              } else if (userResultValue is Error) {
                widgetResult = Text("Error");
              } else {
                widgetResult = null;
              }

              return Visibility(
                visible: widgetResult != null,
                child: widgetResult!,
              );
            },
          ),
        ),
      ),
    );
  }
}
