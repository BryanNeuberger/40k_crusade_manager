// part of db;
part of '../app_database.dart';

@UseDao(tables: [BattleHonorEntities])
class BattleHonorDao extends DatabaseAccessor<AppDatabase> with _$BattleHonorDaoMixin {
  final AppDatabase db;

  BattleHonorDao(this.db) : super(db);

  Future<List<BattleHonorEntity>> getAll() => select(db.battleHonorEntities).get();
  Future<BattleHonorEntity> getItem(int id) =>
      (select(db.battleHonorEntities)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<BattleHonorEntity> battleHonor) => into(db.battleHonorEntities).insert(battleHonor);
  Future updateItem(Insertable<BattleHonorEntity> battleHonor) => update(db.battleHonorEntities).replace(battleHonor);
  Future deleteItem(Insertable<BattleHonorEntity> battleHonor) => delete(db.battleHonorEntities).delete(battleHonor);
}
