import 'package:dio/dio.dart';
import 'package:instagram_loader/src/models/root_response.dart';
import 'package:instagram_loader/src/utils/api_request.dart';
import 'package:instagram_loader/src/utils/endpoint.dart';

class ApiManager {
  Future<RootResponse> getInstagramData({String username}) async {
    Response response = await ApiRequest.get(
      Endpoint.instagramUrl(username: username),
    );
    return RootResponse.fromJson(response.data);
  }
}
