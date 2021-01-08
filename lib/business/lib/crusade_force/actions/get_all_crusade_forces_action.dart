import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:business/app_state.dart';
import 'package:business/crusade_force/services/crusade_force_database_service.dart';
import 'package:business/di/service_locator.dart';

class GetAllCrusadeForcesAction extends ReduxAction<AppState> {
  CrusadeForceDatabaseService _crusadeForceDatabaseService;

  GetAllCrusadeForcesAction({
    CrusadeForceDatabaseService crusadeForceDatabaseService,
  }) {
    _crusadeForceDatabaseService = crusadeForceDatabaseService ?? serviceLocator<CrusadeForceDatabaseService>();
  }

  @override
  FutureOr<AppState> reduce() async {
    final result = await _crusadeForceDatabaseService.getAll();

    return AppState.copyWith(state,
        crusadeForceState: state.crusadeForceState.copyWith(
          crusadeForces: result.data,
          error: result.error,
        ));
  }
}
