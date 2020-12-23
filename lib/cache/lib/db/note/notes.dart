import 'package:moor_flutter/moor_flutter.dart';

@DataClassName("NoteEntity")
class NoteEntities extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get crusadeCardId => integer().nullable()();
  IntColumn get orderOfBattleId => integer().nullable()();
  TextColumn get label => text().withLength(min: 0, max: 100)();
  TextColumn get description => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}
