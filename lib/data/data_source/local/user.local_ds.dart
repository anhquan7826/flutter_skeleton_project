import 'package:flutter_skeleton_project/data/model/user.model.dart';

abstract class UserLocalDatasource {
  Future<List<User>> getAllUsers();
}