library app_cache;

import 'package:app_cache/db/battle_honor/battle_honors.dart';
import 'package:app_cache/db/battle_scar/battle_scars.dart';
import 'package:app_cache/db/crusade_card/crusade_cards.dart';
import 'package:app_cache/db/crusade_force/crusade_forces.dart';
import 'package:app_cache/db/note/notes.dart';
import 'package:app_cache/db/order_of_battle/order_of_battles.dart';
import 'package:app_cache/db/psychic_power/psychic_powers.dart';
import 'package:app_cache/db/relic/relics.dart';
import 'package:app_cache/db/unit_model/unit_models.dart';
import 'package:app_cache/db/warlord_trait/warlord_traits.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part './battle_honor/battle_honor_dao.dart';
part './battle_scar/battle_scar_dao.dart';
part './crusade_card/crusade_card_dao.dart';
part './crusade_force/crusade_force_dao.dart';
part './note/note_dao.dart';
part './order_of_battle/order_of_battle_dao.dart';
part './psychic_power/psychic_power_dao.dart';
part './relic/relic_dao.dart';
part './unit_model/unit_model_dao.dart';
part './warlord_trait/warlord_trait_dao.dart';
part 'app_database.g.dart';

@UseMoor(tables: [
  BattleHonorEntities,
  BattleScarEntities,
  CrusadeCardEntities,
  CrusadeForceEntities,
  NoteEntities,
  OrderOfBattleEntities,
  PsychicPowerEntities,
  RelicEntities,
  UnitModelEntities,
  WarlordTraitEntities,
], daos: [
  BattleHonorDao,
  BattleScarDao,
  CrusadeCardDao,
  CrusadeForceDao,
  NoteDao,
  OrderOfBattleDao,
  PsychicPowerDao,
  RelicDao,
  UnitModelDao,
  WarlordTraitDao,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 1;
}
