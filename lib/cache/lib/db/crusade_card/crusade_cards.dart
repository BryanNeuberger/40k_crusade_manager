import 'package:moor_flutter/moor_flutter.dart';

class CrusadeCards extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orderOfBattleId => integer()();
  IntColumn get powerRating => integer()();
  IntColumn get rank => integer()();
  IntColumn get battleHonors => integer()();
  IntColumn get requisitionPointsSpent => integer()();
  IntColumn get experiencePoints => integer()();
  IntColumn get crusadePoints => integer()();
  IntColumn get battlesWon => integer()();
  IntColumn get battlesLost => integer()();
  IntColumn get battlesPlayed => integer()();
  IntColumn get battlesSurvived => integer()();
  TextColumn get unitName => text().withLength(min: 1, max: 50)();
  TextColumn get battleFieldRole => text().withLength(min: 1, max: 50)();
  TextColumn get selectableKeywords => text().withLength(min: 1, max: 250)();
  TextColumn get unitType => text().withLength(min: 1, max: 50)();
  IntColumn get enemyUnitsDestroyed => integer()();
  IntColumn get enemyUnitsDestroyedWithPsychicPowers => integer()();
  IntColumn get enemyUnitsDestroyedWithRangedWeapons => integer()();
  IntColumn get enemyUnitsDestroyedWithMeleeWeapons => integer()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}
