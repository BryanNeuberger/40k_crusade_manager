import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:business/app_state.dart';
import 'package:business/crusade_force/actions/get_all_crusade_forces_action.dart';
import 'package:business/crusade_force/models/crusade_force.dart';
import 'package:business/crusade_force/services/crusade_force_database_service.dart';
import 'package:business/di/service_locator.dart';

class CreateNewCrusadeForce extends ReduxAction<AppState> {
  CrusadeForceDatabaseService _crusadeForceDatabaseService;
  final CrusadeForce crusadeForce;

  CreateNewCrusadeForce({
    CrusadeForceDatabaseService crusadeForceDatabaseService,
    this.crusadeForce,
  }) {
    _crusadeForceDatabaseService = crusadeForceDatabaseService ?? serviceLocator<CrusadeForceDatabaseService>();
  }

  @override
  FutureOr<AppState> reduce() async {
    final result = await _crusadeForceDatabaseService.insertCrusadeForce(crusadeForce);
    if (result.data > 0) dispatch(GetAllCrusadeForcesAction());

    return AppState.copyWith(state,
        crusadeForceState: state.crusadeForceState.copyWith(
          error: result.error,
        ));
  }
}
