import 'dart:async';

import 'package:floor/floor.dart';
import 'package:flutter_skeleton_project/data/data_source/local/database/dao/user.dao.dart';
import 'package:flutter_skeleton_project/data/data_source/local/database/entity/user.entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [UserEntity])
abstract class AppDatabase extends FloorDatabase {
  static Future<void> initiate() async {
    _instance ??= await $FloorAppDatabase
        .databaseBuilder('app_database.db')
        // .addMigrations([
        //   migration1to2,
        // ])
        .build();
  }

  static AppDatabase? _instance;

  static AppDatabase getInstance() => _instance!;

  UserDao get userDao;
}

Migration get migration1to2 {
  return Migration(1, 2, (database) async {
    await database.execute(
      'ALTER TABLE ${UserEntity.table} ADD COLUMN name TEXT',
    );
  });
}
