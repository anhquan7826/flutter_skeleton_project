import 'package:dio/dio.dart';
import 'package:flutter_skeleton_project/data/data_source/remote/endpoint/api_endpoint.dart';
import 'package:flutter_skeleton_project/data/data_source/remote/request/get_user.response.dart';
import 'package:flutter_skeleton_project/data/data_source/remote/response/get_user.request.dart';
import 'package:flutter_skeleton_project/data/data_source/remote/user.remote_ds.dart';

class UserRemoteDatasourceImpl extends UserRemoteDatasource {
  UserRemoteDatasourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<GetUserResponse> getUser(GetUserRequest request) async {
    final result = await _dio.get(
      ApiEndpoint.user,
      data: request.toJson(),
    );
    return GetUserResponse.fromJson(result.data);
  }
}
