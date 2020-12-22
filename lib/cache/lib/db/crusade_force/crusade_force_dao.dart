part of '../app_database.dart';

@UseDao(tables: [CrusadeForces])
class CrusadeForceDao extends DatabaseAccessor<AppDatabase> with _$CrusadeForceDaoMixin {
  final AppDatabase db;

  CrusadeForceDao(this.db) : super(db);

  Future<List<CrusadeForce>> getAll() => select(db.crusadeForces).get();
  Future<CrusadeForce> getItem(int id) => (select(db.crusadeForces)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<CrusadeForce> item) => into(db.crusadeForces).insert(item);
  Future updateItem(Insertable<CrusadeForce> item) => update(db.crusadeForces).replace(item);
  Future deleteItem(Insertable<CrusadeForce> item) => delete(db.crusadeForces).delete(item);
}
