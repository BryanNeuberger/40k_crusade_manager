import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class CrusadeForce extends Equatable {
  final int id;
  final String crusadeFactionKeyword;
  final String description;

  CrusadeForce({
    this.id,
    this.crusadeFactionKeyword,
    this.description,
  });

  CrusadeForce copyWith({
    int id,
    String crusadeFactionKeyword,
    String description,
  }) =>
      CrusadeForce(
        id: id ?? this.id,
        crusadeFactionKeyword: crusadeFactionKeyword ?? this.crusadeFactionKeyword,
        description: description ?? this.description,
      );

  @override
  List<Object> get props => [id, crusadeFactionKeyword, description];

  @override
  bool get stringify => true;
}
