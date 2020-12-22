part of '../app_database.dart';

@UseDao(tables: [WarlordTraits])
class WarlordTraitDao extends DatabaseAccessor<AppDatabase> with _$WarlordTraitDaoMixin {
  final AppDatabase db;

  WarlordTraitDao(this.db) : super(db);

  Future<List<WarlordTrait>> getAll() => select(db.warlordTraits).get();
  Future<WarlordTrait> getItem(int id) => (select(db.warlordTraits)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<WarlordTrait> item) => into(db.warlordTraits).insert(item);
  Future updateItem(Insertable<WarlordTrait> item) => update(db.warlordTraits).replace(item);
  Future deleteItem(Insertable<WarlordTrait> item) => delete(db.warlordTraits).delete(item);
}
