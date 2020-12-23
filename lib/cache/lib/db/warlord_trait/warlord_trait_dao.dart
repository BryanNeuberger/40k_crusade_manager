part of '../app_database.dart';

@UseDao(tables: [WarlordTraitEntities])
class WarlordTraitDao extends DatabaseAccessor<AppDatabase> with _$WarlordTraitDaoMixin {
  final AppDatabase db;

  WarlordTraitDao(this.db) : super(db);

  Future<List<WarlordTraitEntity>> getAll() => select(db.warlordTraitEntities).get();
  Future<WarlordTraitEntity> getItem(int id) => (select(db.warlordTraitEntities)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<WarlordTraitEntity> item) => into(db.warlordTraitEntities).insert(item);
  Future updateItem(Insertable<WarlordTraitEntity> item) => update(db.warlordTraitEntities).replace(item);
  Future deleteItem(Insertable<WarlordTraitEntity> item) => delete(db.warlordTraitEntities).delete(item);
}
