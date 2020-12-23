import 'package:moor_flutter/moor_flutter.dart';

@DataClassName("UnitModelEntity")
class UnitModelEntities extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get crusadeCardId => integer()();
  TextColumn get name => text().withLength(min: 1, max: 150)();
  TextColumn get wargear => text().withLength(min: 1, max: 250)();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}
