import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class AppState extends Equatable {
  final String stateString;

  AppState({
    this.stateString,
  });

  factory AppState.copyWith(
    AppState previousState, {
    String stateString,
  }) =>
      AppState(
        stateString: stateString ?? previousState.stateString,
      );

  factory AppState.initialState() => AppState(
        stateString: "initial",
      );

  @override
  List<Object> get props => [stateString];

  @override
  bool get stringify => true;
}
