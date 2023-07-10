import 'package:flutter/material.dart';
import 'package:flutter_learn/controller/home/home_controller.dart';
import 'package:flutter_learn/presentation/component/home/user_search_bar.dart';
import 'package:flutter_learn/presentation/component/user/github_user_container.dart';
import 'package:flutter_learn/presentation/domain/home/user_model.dart';
import 'package:flutter_learn/presentation/domain/screen_page.dart';
import 'package:flutter_learn/presentation/domain/ui_result.dart';
import 'package:flutter_learn/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeScreenTemplate extends StatelessWidget {
  const HomeScreenTemplate({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            UserSearchBar(
              onTextChangedListener: homeController.onTextChanged,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Obx(
                  () {
                    final Widget widgetResult;
                    var userResultValue = homeController.userResult.value;

                    if (userResultValue is Loading) {
                      widgetResult = Text("Loading");
                    } else if (userResultValue is Success<UserModel>) {
                      widgetResult = GithubUserContainer(
                        user: userResultValue.data!,
                        onItemClickListener: homeController.navigateScreen,
                      );
                    } else if (userResultValue is Error) {
                      widgetResult = Text("Error");
                    } else {
                      widgetResult = SizedBox(height: 0);
                    }

                    return widgetResult;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
