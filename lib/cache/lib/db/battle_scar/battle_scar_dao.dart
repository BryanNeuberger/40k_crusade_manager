part of '../app_database.dart';

@UseDao(tables: [BattleScars])
class BattleScarDao extends DatabaseAccessor<AppDatabase> with _$BattleScarDaoMixin {
  final AppDatabase db;

  BattleScarDao(this.db) : super(db);

  Future<List<BattleScar>> getAll() => select(db.battleScars).get();
  Future<BattleScar> getItem(int id) => (select(db.battleScars)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<BattleScar> battleScar) => into(db.battleScars).insert(battleScar);
  Future updateItem(Insertable<BattleScar> battleScar) => update(db.battleScars).replace(battleScar);
  Future deleteItem(Insertable<BattleScar> battleScar) => delete(db.battleScars).delete(battleScar);
}
