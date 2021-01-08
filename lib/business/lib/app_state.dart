import 'package:business/crusade_force/models/crusade_force_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class AppState extends Equatable {
  final String stateString;
  final CrusadeForceState crusadeForceState;

  AppState({
    this.stateString,
    this.crusadeForceState,
  });

  factory AppState.copyWith(
    AppState previousState, {
    String stateString,
    CrusadeForceState crusadeForceState,
  }) =>
      AppState(
        stateString: stateString ?? previousState.stateString,
        crusadeForceState: crusadeForceState ?? previousState.crusadeForceState,
      );

  factory AppState.initialState() => AppState(
        stateString: "initial",
        crusadeForceState: CrusadeForceState.initialState(),
      );

  @override
  List<Object> get props => [
        stateString,
        crusadeForceState,
      ];

  @override
  bool get stringify => true;
}
