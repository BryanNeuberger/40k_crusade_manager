part of '../app_database.dart';

@UseDao(tables: [Notes])
class NoteDao extends DatabaseAccessor<AppDatabase> with _$NoteDaoMixin {
  final AppDatabase db;

  NoteDao(this.db) : super(db);

  Future<List<Note>> getAll() => select(db.notes).get();
  Future<Note> getItem(int id) => (select(db.notes)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<Note> item) => into(db.notes).insert(item);
  Future updateItem(Insertable<Note> item) => update(db.notes).replace(item);
  Future deleteItem(Insertable<Note> item) => delete(db.notes).delete(item);
}
