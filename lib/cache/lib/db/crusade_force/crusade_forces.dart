import 'package:moor_flutter/moor_flutter.dart';

@DataClassName("CrusadeForceEntity")
class CrusadeForceEntities extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get crusadeFactionKeyword => text().withLength(min: 3, max: 25)();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}
