import 'package:moor_flutter/moor_flutter.dart';

@DataClassName("PsychicPowerEntity")
class PsychicPowerEntities extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get crusadeCardId => integer()();
  TextColumn get name => text().withLength(min: 1, max: 150)();
  IntColumn get warpCharge => integer()();
  TextColumn get description => text().nullable()();
  BoolColumn get fromBattleHonor => boolean().withDefault(Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}
