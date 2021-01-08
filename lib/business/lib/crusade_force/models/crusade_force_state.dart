import 'package:business/crusade_force/models/crusade_force.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class CrusadeForceState extends Equatable {
  final List<CrusadeForce> crusadeForces;
  final CrusadeForce currentCrusadeForce;
  final dynamic error;

  CrusadeForceState({
    this.crusadeForces,
    this.currentCrusadeForce,
    this.error,
  });

  factory CrusadeForceState.initialState() => CrusadeForceState();

  CrusadeForceState copyWith({
    List<CrusadeForce> crusadeForces,
    CrusadeForce currentCrusadeForce,
    dynamic error,
  }) =>
      CrusadeForceState(
        crusadeForces: crusadeForces ?? this.crusadeForces,
        currentCrusadeForce: currentCrusadeForce ?? this.currentCrusadeForce,
        error: error ?? this.error,
      );

  @override
  List<Object> get props => [crusadeForces, currentCrusadeForce, error];

  @override
  bool get stringify => true;
}
