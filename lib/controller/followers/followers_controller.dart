import 'package:flutter_learn/controller/followers/followers_variable.dart';
import 'package:flutter_learn/presentation/domain/ui_result.dart';
import 'package:url_launcher/url_launcher.dart';

class FollowersController extends FollowersVariable {
  FollowersController({
    required super.githubRepository,
  });

  @override
  void onInit() {
    super.onInit();

    searchForGithubFollowers(args);
  }

  Future<void> openPersonPage(String url) async {
    var path = Uri.parse(url);
    if (!await launchUrl(path, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  Future<void> searchForGithubFollowers(String user) async {
    try {
      followersResult.value = Loading();
      var request = await githubRepository.fetchUserFollowerList(user);
      followersResult.value = Success(data: request);
    } catch (e) {
      if (e is Error) {
        followersResult.value = Error(error: e);
      }
    }
  }
}
