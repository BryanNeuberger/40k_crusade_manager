part of '../app_database.dart';

@UseDao(tables: [RelicEntities])
class RelicDao extends DatabaseAccessor<AppDatabase> with _$RelicDaoMixin {
  final AppDatabase db;

  RelicDao(this.db) : super(db);

  Future<List<RelicEntity>> getAll() => select(db.relicEntities).get();
  Future<RelicEntity> getItem(int id) => (select(db.relicEntities)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<RelicEntity> item) => into(db.relicEntities).insert(item);
  Future updateItem(Insertable<RelicEntity> item) => update(db.relicEntities).replace(item);
  Future deleteItem(Insertable<RelicEntity> item) => delete(db.relicEntities).delete(item);
}
