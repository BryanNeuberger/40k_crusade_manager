import 'package:async_redux/async_redux.dart';
import 'package:business/business.dart';
import 'package:client/crusade_force_client/crusade_force_view.dart';
import 'package:client/crusade_force_client/crusade_force_view_model.dart';
import 'package:flutter/material.dart';

class CrusadeForceScreen extends Page {
  CrusadeForceScreen() : super(key: ValueKey('CrusadeForceScreen'));

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this,
        builder: (BuildContext context) {
          return StoreConnector<AppState, CrusadeForceViewModel>(
            vm: CrusadeForceViewModelFactory(this),
            builder: (BuildContext context, CrusadeForceViewModel viewModel) => CrusadeForceView(viewModel),
            onInit: (Store<AppState> store) {
              store.dispatch(GetAllCrusadeForcesAction());
            },
          );
        });
  }
}
