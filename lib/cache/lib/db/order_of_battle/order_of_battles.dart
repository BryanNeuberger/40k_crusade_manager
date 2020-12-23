import 'package:moor_flutter/moor_flutter.dart';

@DataClassName("OrderOfBattleEntity")
class OrderOfBattleEntities extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get crusadeForceId => integer()();
  IntColumn get supplyLimit => integer()();
  IntColumn get battleTally => integer()();
  IntColumn get requisitionPoints => integer()();
  IntColumn get battlesWon => integer()();
  IntColumn get battlesLost => integer()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}
