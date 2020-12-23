part of '../app_database.dart';

@UseDao(tables: [BattleScarEntities])
class BattleScarDao extends DatabaseAccessor<AppDatabase> with _$BattleScarDaoMixin {
  final AppDatabase db;

  BattleScarDao(this.db) : super(db);

  Future<List<BattleScarEntity>> getAll() => select(db.battleScarEntities).get();
  Future<BattleScarEntity> getItem(int id) => (select(db.battleScarEntities)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<BattleScarEntity> battleScar) => into(db.battleScarEntities).insert(battleScar);
  Future updateItem(Insertable<BattleScarEntity> battleScar) => update(db.battleScarEntities).replace(battleScar);
  Future deleteItem(Insertable<BattleScarEntity> battleScar) => delete(db.battleScarEntities).delete(battleScar);
}
