part of '../app_database.dart';

@UseDao(tables: [CrusadeCards])
class CrusadeCardDao extends DatabaseAccessor<AppDatabase> with _$CrusadeCardDaoMixin {
  final AppDatabase db;

  CrusadeCardDao(this.db) : super(db);

  Future<List<CrusadeCard>> getAll() => select(db.crusadeCards).get();
  Future<CrusadeCard> getItem(int id) => (select(db.crusadeCards)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<CrusadeCard> item) => into(db.crusadeCards).insert(item);
  Future updateItem(Insertable<CrusadeCard> item) => update(db.crusadeCards).replace(item);
  Future deleteItem(Insertable<CrusadeCard> item) => delete(db.crusadeCards).delete(item);
}
