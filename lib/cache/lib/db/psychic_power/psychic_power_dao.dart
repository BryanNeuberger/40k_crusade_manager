part of '../app_database.dart';

@UseDao(tables: [PsychicPowers])
class PsychicPowerDao extends DatabaseAccessor<AppDatabase> with _$PsychicPowerDaoMixin {
  final AppDatabase db;

  PsychicPowerDao(this.db) : super(db);

  Future<List<PsychicPower>> getAll() => select(db.psychicPowers).get();
  Future<PsychicPower> getItem(int id) => (select(db.psychicPowers)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<PsychicPower> item) => into(db.psychicPowers).insert(item);
  Future updateItem(Insertable<PsychicPower> item) => update(db.psychicPowers).replace(item);
  Future deleteItem(Insertable<PsychicPower> item) => delete(db.psychicPowers).delete(item);
}
