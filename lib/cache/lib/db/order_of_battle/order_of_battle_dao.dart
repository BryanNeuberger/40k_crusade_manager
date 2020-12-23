part of '../app_database.dart';

@UseDao(tables: [OrderOfBattleEntities])
class OrderOfBattleDao extends DatabaseAccessor<AppDatabase> with _$OrderOfBattleDaoMixin {
  final AppDatabase db;

  OrderOfBattleDao(this.db) : super(db);

  Future<List<OrderOfBattleEntity>> getAll() => select(db.orderOfBattleEntities).get();
  Future<OrderOfBattleEntity> getItem(int id) => (select(db.orderOfBattleEntities)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<OrderOfBattleEntity> item) => into(db.orderOfBattleEntities).insert(item);
  Future updateItem(Insertable<OrderOfBattleEntity> item) => update(db.orderOfBattleEntities).replace(item);
  Future deleteItem(Insertable<OrderOfBattleEntity> item) => delete(db.orderOfBattleEntities).delete(item);
}
