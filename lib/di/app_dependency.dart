import 'package:dio/dio.dart';
import 'package:flutter_skeleton_project/base/app_dependency.base.dart';
import 'package:flutter_skeleton_project/data/data_source/local/database/database.dart';
import 'package:flutter_skeleton_project/data/data_source/local/impl/user.local_ds.impl.dart';
import 'package:flutter_skeleton_project/data/data_source/local/user.local_ds.dart';
import 'package:flutter_skeleton_project/data/data_source/remote/impl/user.remote_ds.impl.dart';
import 'package:flutter_skeleton_project/data/data_source/remote/user.remote_ds.dart';
import 'package:flutter_skeleton_project/data/repository/authentication.repo.dart';
import 'package:flutter_skeleton_project/data/repository/impl/authentication.repo.impl.dart';

class AppDependency extends BaseAppDependency {
  factory AppDependency() => _instance;

  AppDependency._();

  static final AppDependency _instance = AppDependency._();

  @override
  void registerDependencies() {
    di
      ..registerLazySingleton<Dio>(() {
        return Dio(BaseOptions());
      })
      ..registerLazySingleton<AppDatabase>(
        AppDatabase.getInstance,
      );
  }

  @override
  void registerRepositories() {
    di.registerLazySingleton<AuthenticationRepo>(
        () => AuthenticationRepoImpl(di.get(), di.get()));
  }

  @override
  void registerLocalDatasource() {
    di.registerLazySingleton<UserLocalDatasource>(
        () => UserLocalDatasourceImpl(di.get()));
  }

  @override
  void registerRemoteDatasource() {
    di.registerLazySingleton<UserRemoteDatasource>(
        () => UserRemoteDatasourceImpl(di.get()));
  }
}
