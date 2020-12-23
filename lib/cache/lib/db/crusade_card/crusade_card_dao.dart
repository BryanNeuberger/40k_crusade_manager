part of '../app_database.dart';

@UseDao(tables: [CrusadeCardEntities])
class CrusadeCardDao extends DatabaseAccessor<AppDatabase> with _$CrusadeCardDaoMixin {
  final AppDatabase db;

  CrusadeCardDao(this.db) : super(db);

  Future<List<CrusadeCardEntity>> getAll() => select(db.crusadeCardEntities).get();
  Future<CrusadeCardEntity> getItem(int id) => (select(db.crusadeCardEntities)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<CrusadeCardEntity> item) => into(db.crusadeCardEntities).insert(item);
  Future updateItem(Insertable<CrusadeCardEntity> item) => update(db.crusadeCardEntities).replace(item);
  Future deleteItem(Insertable<CrusadeCardEntity> item) => delete(db.crusadeCardEntities).delete(item);
}
