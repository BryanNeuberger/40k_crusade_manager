part of '../app_database.dart';

@UseDao(tables: [CrusadeForceEntities])
class CrusadeForceDao extends DatabaseAccessor<AppDatabase> with _$CrusadeForceDaoMixin {
  final AppDatabase db;

  CrusadeForceDao(this.db) : super(db);

  Future<List<CrusadeForceEntity>> getAll() => select(db.crusadeForceEntities).get();
  Future<CrusadeForceEntity> getItem(int id) => (select(db.crusadeForceEntities)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future<int> insertItem(Insertable<CrusadeForceEntity> item) => into(db.crusadeForceEntities).insert(item);
  Future<bool> updateItem(Insertable<CrusadeForceEntity> item) => update(db.crusadeForceEntities).replace(item);
  Future<int> deleteItem(Insertable<CrusadeForceEntity> item) => delete(db.crusadeForceEntities).delete(item);

  CrusadeForceEntitiesCompanion toCompanion(CrusadeForceEntity model) {
    return CrusadeForceEntitiesCompanion(
      crusadeFactionKeyword: Value(model.crusadeFactionKeyword),
      description: Value(model.description),
    );
  }
}
