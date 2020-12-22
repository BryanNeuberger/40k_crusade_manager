// part of db;
part of '../app_database.dart';

@UseDao(tables: [BattleHonors])
class BattleHonorDao extends DatabaseAccessor<AppDatabase> with _$BattleHonorDaoMixin {
  final AppDatabase db;

  BattleHonorDao(this.db) : super(db);

  Future<List<BattleHonor>> getAll() => select(db.battleHonors).get();
  Future<BattleHonor> getItem(int id) => (select(db.battleHonors)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<BattleHonor> battleHonor) => into(db.battleHonors).insert(battleHonor);
  Future updateItem(Insertable<BattleHonor> battleHonor) => update(db.battleHonors).replace(battleHonor);
  Future deleteItem(Insertable<BattleHonor> battleHonor) => delete(db.battleHonors).delete(battleHonor);
}
