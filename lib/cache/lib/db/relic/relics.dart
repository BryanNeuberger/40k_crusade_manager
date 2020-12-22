import 'package:moor_flutter/moor_flutter.dart';

class Relics extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get crusadeCardId => integer()();
  TextColumn get name => text().withLength(min: 1, max: 150)();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}
