import 'package:dio/dio.dart';
import 'package:flutter_learn/model/github_repo.dart';
import 'package:flutter_learn/model/github_user.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'github_service.g.dart';

@RestApi(baseUrl: "https://api.github.com/")
abstract class GithubService {
  static final _prettyLogger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: true,
    compact: true,
  );

  factory GithubService(Dio dio, {String baseUrl}) = _GithubService;

  static GithubService create() {
    final dio = Dio();
    dio.interceptors.add(_prettyLogger);
    return GithubService(dio);
  }

  @GET("users/{name}")
  Future<GithubUser> fetchGithubUser(@Path() String name);

  @GET("users/{name}/repos")
  Future<List<GithubRepo>> fetchGithubRepo(@Path() String name);
}
