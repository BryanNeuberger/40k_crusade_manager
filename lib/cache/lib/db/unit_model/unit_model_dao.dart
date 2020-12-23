part of '../app_database.dart';

@UseDao(tables: [UnitModelEntities])
class UnitModelDao extends DatabaseAccessor<AppDatabase> with _$UnitModelDaoMixin {
  final AppDatabase db;

  UnitModelDao(this.db) : super(db);

  Future<List<UnitModelEntity>> getAll() => select(db.unitModelEntities).get();
  Future<UnitModelEntity> getItem(int id) => (select(db.unitModelEntities)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<UnitModelEntity> item) => into(db.unitModelEntities).insert(item);
  Future updateItem(Insertable<UnitModelEntity> item) => update(db.unitModelEntities).replace(item);
  Future deleteItem(Insertable<UnitModelEntity> item) => delete(db.unitModelEntities).delete(item);
}
