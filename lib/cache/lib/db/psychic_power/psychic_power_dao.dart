part of '../app_database.dart';

@UseDao(tables: [PsychicPowerEntities])
class PsychicPowerDao extends DatabaseAccessor<AppDatabase> with _$PsychicPowerDaoMixin {
  final AppDatabase db;

  PsychicPowerDao(this.db) : super(db);

  Future<List<PsychicPowerEntity>> getAll() => select(db.psychicPowerEntities).get();
  Future<PsychicPowerEntity> getItem(int id) => (select(db.psychicPowerEntities)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<PsychicPowerEntity> item) => into(db.psychicPowerEntities).insert(item);
  Future updateItem(Insertable<PsychicPowerEntity> item) => update(db.psychicPowerEntities).replace(item);
  Future deleteItem(Insertable<PsychicPowerEntity> item) => delete(db.psychicPowerEntities).delete(item);
}
