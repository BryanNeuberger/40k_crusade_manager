part of '../app_database.dart';

@UseDao(tables: [NoteEntities])
class NoteDao extends DatabaseAccessor<AppDatabase> with _$NoteDaoMixin {
  final AppDatabase db;

  NoteDao(this.db) : super(db);

  Future<List<NoteEntity>> getAll() => select(db.noteEntities).get();
  Future<NoteEntity> getItem(int id) => (select(db.noteEntities)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<NoteEntity> item) => into(db.noteEntities).insert(item);
  Future updateItem(Insertable<NoteEntity> item) => update(db.noteEntities).replace(item);
  Future deleteItem(Insertable<NoteEntity> item) => delete(db.noteEntities).delete(item);
}
