// library db;

import 'package:cache/db/battle_honor/battle_honors.dart';
import 'package:cache/db/battle_scar/battle_scars.dart';
import 'package:cache/db/crusade_card/crusade_cards.dart';
import 'package:cache/db/crusade_force/crusade_forces.dart';
import 'package:cache/db/note/notes.dart';
import 'package:cache/db/order_of_battle/order_of_battles.dart';
import 'package:cache/db/psychic_power/psychic_powers.dart';
import 'package:cache/db/relic/relics.dart';
import 'package:cache/db/unit_model/unit_models.dart';
import 'package:cache/db/warlord_trait/warlord_traits.dart';
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
  BattleHonors,
  BattleScars,
  CrusadeCards,
  CrusadeForces,
  Notes,
  OrderOfBattles,
  PsychicPowers,
  Relics,
  UnitModels,
  WarlordTraits,
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
