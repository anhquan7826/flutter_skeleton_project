import 'package:flutter_skeleton_project/data/data_source/local/user.local_ds.dart';
import 'package:flutter_skeleton_project/data/data_source/remote/user.remote_ds.dart';
import 'package:flutter_skeleton_project/data/repository/authentication.repo.dart';

class AuthenticationRepoImpl extends AuthenticationRepo {
  AuthenticationRepoImpl(
    this._userRemoteDatasource,
    this._userLocalDatasource,
  );

  final UserRemoteDatasource _userRemoteDatasource;
  final UserLocalDatasource _userLocalDatasource;
}
