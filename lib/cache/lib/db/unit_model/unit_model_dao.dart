part of '../app_database.dart';

@UseDao(tables: [UnitModels])
class UnitModelDao extends DatabaseAccessor<AppDatabase> with _$UnitModelDaoMixin {
  final AppDatabase db;

  UnitModelDao(this.db) : super(db);

  Future<List<UnitModel>> getAll() => select(db.unitModels).get();
  Future<UnitModel> getItem(int id) => (select(db.unitModels)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<UnitModel> item) => into(db.unitModels).insert(item);
  Future updateItem(Insertable<UnitModel> item) => update(db.unitModels).replace(item);
  Future deleteItem(Insertable<UnitModel> item) => delete(db.unitModels).delete(item);
}
