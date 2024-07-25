import 'package:floor/floor.dart';
import 'package:flutter_skeleton_project/data/data_source/local/database/entity/user.entity.dart';

@dao
abstract class UserDao {
  @Query('SELECT * FROM ${UserEntity.table}')
  Future<List<UserEntity>> getUsers();
}