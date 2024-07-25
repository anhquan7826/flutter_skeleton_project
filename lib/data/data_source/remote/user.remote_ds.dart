import 'package:flutter_skeleton_project/data/data_source/remote/request/get_user.response.dart';
import 'package:flutter_skeleton_project/data/data_source/remote/response/get_user.request.dart';

abstract class UserRemoteDatasource {
  Future<GetUserResponse> getUser(GetUserRequest request);
}