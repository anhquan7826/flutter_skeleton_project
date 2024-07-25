import 'package:flutter_skeleton_project/data/data_source/local/database/database.dart';
import 'package:flutter_skeleton_project/data/data_source/local/user.local_ds.dart';
import 'package:flutter_skeleton_project/data/model/user.model.dart';

class UserLocalDatasourceImpl extends UserLocalDatasource {
  UserLocalDatasourceImpl(this._db);

  final AppDatabase _db;

  @override
  Future<List<User>> getAllUsers() {
    return _db.userDao.getUsers().then((value) {
      return value.map((e) {
        return User(id: e.id);
      }).toList();
    });
  }
}