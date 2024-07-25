import 'package:floor/floor.dart';

@Entity(tableName: UserEntity.table)
class UserEntity {
  UserEntity(this.id);

  static const String table = 'user';

  @primaryKey
  final String id;
}