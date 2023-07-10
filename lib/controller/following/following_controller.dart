import 'package:flutter_learn/controller/following/following_variable.dart';
import 'package:flutter_learn/presentation/domain/ui_result.dart';
import 'package:url_launcher/url_launcher.dart';

class FollowingController extends FollowingVariable {
  FollowingController({
    required super.githubRepository,
  });

  @override
  void onInit() {
    super.onInit();

    searchForGithubFollowing(args);
  }

  Future<void> openPersonPage(String url) async {
    var path = Uri.parse(url);
    if (!await launchUrl(path, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  Future<void> searchForGithubFollowing(String user) async {
    try {
      followingResult.value = Loading();
      var request = await githubRepository.fetchUserFollowingList(user);
      followingResult.value = Success(data: request);
    } catch (e) {
      if (e is Error) {
        followingResult.value = Error(error: e);
      }
    }
  }
}
