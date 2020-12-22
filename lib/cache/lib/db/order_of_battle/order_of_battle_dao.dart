part of '../app_database.dart';

@UseDao(tables: [OrderOfBattles])
class OrderOfBattleDao extends DatabaseAccessor<AppDatabase> with _$OrderOfBattleDaoMixin {
  final AppDatabase db;

  OrderOfBattleDao(this.db) : super(db);

  Future<List<OrderOfBattle>> getAll() => select(db.orderOfBattles).get();
  Future<OrderOfBattle> getItem(int id) => (select(db.orderOfBattles)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future insertItem(Insertable<OrderOfBattle> item) => into(db.orderOfBattles).insert(item);
  Future updateItem(Insertable<OrderOfBattle> item) => update(db.orderOfBattles).replace(item);
  Future deleteItem(Insertable<OrderOfBattle> item) => delete(db.orderOfBattles).delete(item);
}
