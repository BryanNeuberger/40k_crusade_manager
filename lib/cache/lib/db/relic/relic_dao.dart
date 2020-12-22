part of '../app_database.dart';

@UseDao(tables: [Relics])
class RelicDao extends DatabaseAccessor<AppDatabase> with _$RelicDaoMixin {
  final AppDatabase db;

  RelicDao(this.db) : super(db);

  Future<List<Relic>> getAll() => select(db.relics).get();
  Future<Relic> getItem(int id) => (select(db.relics)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<Relic> item) => into(db.relics).insert(item);
  Future updateItem(Insertable<Relic> item) => update(db.relics).replace(item);
  Future deleteItem(Insertable<Relic> item) => delete(db.relics).delete(item);
}
