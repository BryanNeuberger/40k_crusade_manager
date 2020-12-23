// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_cache;

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class BattleHonorEntity extends DataClass
    implements Insertable<BattleHonorEntity> {
  final int id;
  final int crusadeCardId;
  final int typeId;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  BattleHonorEntity(
      {@required this.id,
      @required this.crusadeCardId,
      @required this.typeId,
      @required this.name,
      this.description,
      @required this.createdAt,
      @required this.updatedAt});
  factory BattleHonorEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return BattleHonorEntity(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      crusadeCardId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}crusade_card_id']),
      typeId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}type_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || crusadeCardId != null) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId);
    }
    if (!nullToAbsent || typeId != null) {
      map['type_id'] = Variable<int>(typeId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  BattleHonorEntitiesCompanion toCompanion(bool nullToAbsent) {
    return BattleHonorEntitiesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      crusadeCardId: crusadeCardId == null && nullToAbsent
          ? const Value.absent()
          : Value(crusadeCardId),
      typeId:
          typeId == null && nullToAbsent ? const Value.absent() : Value(typeId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory BattleHonorEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BattleHonorEntity(
      id: serializer.fromJson<int>(json['id']),
      crusadeCardId: serializer.fromJson<int>(json['crusadeCardId']),
      typeId: serializer.fromJson<int>(json['typeId']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'crusadeCardId': serializer.toJson<int>(crusadeCardId),
      'typeId': serializer.toJson<int>(typeId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  BattleHonorEntity copyWith(
          {int id,
          int crusadeCardId,
          int typeId,
          String name,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      BattleHonorEntity(
        id: id ?? this.id,
        crusadeCardId: crusadeCardId ?? this.crusadeCardId,
        typeId: typeId ?? this.typeId,
        name: name ?? this.name,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('BattleHonorEntity(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('typeId: $typeId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          crusadeCardId.hashCode,
          $mrjc(
              typeId.hashCode,
              $mrjc(
                  name.hashCode,
                  $mrjc(description.hashCode,
                      $mrjc(createdAt.hashCode, updatedAt.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BattleHonorEntity &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.typeId == this.typeId &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class BattleHonorEntitiesCompanion extends UpdateCompanion<BattleHonorEntity> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<int> typeId;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const BattleHonorEntitiesCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.typeId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  BattleHonorEntitiesCompanion.insert({
    this.id = const Value.absent(),
    @required int crusadeCardId,
    @required int typeId,
    @required String name,
    this.description = const Value.absent(),
    @required DateTime createdAt,
    @required DateTime updatedAt,
  })  : crusadeCardId = Value(crusadeCardId),
        typeId = Value(typeId),
        name = Value(name),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<BattleHonorEntity> custom({
    Expression<int> id,
    Expression<int> crusadeCardId,
    Expression<int> typeId,
    Expression<String> name,
    Expression<String> description,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (crusadeCardId != null) 'crusade_card_id': crusadeCardId,
      if (typeId != null) 'type_id': typeId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  BattleHonorEntitiesCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<int> typeId,
      Value<String> name,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return BattleHonorEntitiesCompanion(
      id: id ?? this.id,
      crusadeCardId: crusadeCardId ?? this.crusadeCardId,
      typeId: typeId ?? this.typeId,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (crusadeCardId.present) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId.value);
    }
    if (typeId.present) {
      map['type_id'] = Variable<int>(typeId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BattleHonorEntitiesCompanion(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('typeId: $typeId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $BattleHonorEntitiesTable extends BattleHonorEntities
    with TableInfo<$BattleHonorEntitiesTable, BattleHonorEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $BattleHonorEntitiesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _crusadeCardIdMeta =
      const VerificationMeta('crusadeCardId');
  GeneratedIntColumn _crusadeCardId;
  @override
  GeneratedIntColumn get crusadeCardId =>
      _crusadeCardId ??= _constructCrusadeCardId();
  GeneratedIntColumn _constructCrusadeCardId() {
    return GeneratedIntColumn(
      'crusade_card_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeIdMeta = const VerificationMeta('typeId');
  GeneratedIntColumn _typeId;
  @override
  GeneratedIntColumn get typeId => _typeId ??= _constructTypeId();
  GeneratedIntColumn _constructTypeId() {
    return GeneratedIntColumn(
      'type_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, crusadeCardId, typeId, name, description, createdAt, updatedAt];
  @override
  $BattleHonorEntitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'battle_honor_entities';
  @override
  final String actualTableName = 'battle_honor_entities';
  @override
  VerificationContext validateIntegrity(Insertable<BattleHonorEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('crusade_card_id')) {
      context.handle(
          _crusadeCardIdMeta,
          crusadeCardId.isAcceptableOrUnknown(
              data['crusade_card_id'], _crusadeCardIdMeta));
    } else if (isInserting) {
      context.missing(_crusadeCardIdMeta);
    }
    if (data.containsKey('type_id')) {
      context.handle(_typeIdMeta,
          typeId.isAcceptableOrUnknown(data['type_id'], _typeIdMeta));
    } else if (isInserting) {
      context.missing(_typeIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BattleHonorEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BattleHonorEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $BattleHonorEntitiesTable createAlias(String alias) {
    return $BattleHonorEntitiesTable(_db, alias);
  }
}

class BattleScarEntity extends DataClass
    implements Insertable<BattleScarEntity> {
  final int id;
  final int crusadeCardId;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  BattleScarEntity(
      {@required this.id,
      @required this.crusadeCardId,
      @required this.name,
      this.description,
      @required this.createdAt,
      @required this.updatedAt});
  factory BattleScarEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return BattleScarEntity(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      crusadeCardId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}crusade_card_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || crusadeCardId != null) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  BattleScarEntitiesCompanion toCompanion(bool nullToAbsent) {
    return BattleScarEntitiesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      crusadeCardId: crusadeCardId == null && nullToAbsent
          ? const Value.absent()
          : Value(crusadeCardId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory BattleScarEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BattleScarEntity(
      id: serializer.fromJson<int>(json['id']),
      crusadeCardId: serializer.fromJson<int>(json['crusadeCardId']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'crusadeCardId': serializer.toJson<int>(crusadeCardId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  BattleScarEntity copyWith(
          {int id,
          int crusadeCardId,
          String name,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      BattleScarEntity(
        id: id ?? this.id,
        crusadeCardId: crusadeCardId ?? this.crusadeCardId,
        name: name ?? this.name,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('BattleScarEntity(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          crusadeCardId.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(description.hashCode,
                  $mrjc(createdAt.hashCode, updatedAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BattleScarEntity &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class BattleScarEntitiesCompanion extends UpdateCompanion<BattleScarEntity> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const BattleScarEntitiesCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  BattleScarEntitiesCompanion.insert({
    this.id = const Value.absent(),
    @required int crusadeCardId,
    @required String name,
    this.description = const Value.absent(),
    @required DateTime createdAt,
    @required DateTime updatedAt,
  })  : crusadeCardId = Value(crusadeCardId),
        name = Value(name),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<BattleScarEntity> custom({
    Expression<int> id,
    Expression<int> crusadeCardId,
    Expression<String> name,
    Expression<String> description,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (crusadeCardId != null) 'crusade_card_id': crusadeCardId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  BattleScarEntitiesCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<String> name,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return BattleScarEntitiesCompanion(
      id: id ?? this.id,
      crusadeCardId: crusadeCardId ?? this.crusadeCardId,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (crusadeCardId.present) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BattleScarEntitiesCompanion(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $BattleScarEntitiesTable extends BattleScarEntities
    with TableInfo<$BattleScarEntitiesTable, BattleScarEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $BattleScarEntitiesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _crusadeCardIdMeta =
      const VerificationMeta('crusadeCardId');
  GeneratedIntColumn _crusadeCardId;
  @override
  GeneratedIntColumn get crusadeCardId =>
      _crusadeCardId ??= _constructCrusadeCardId();
  GeneratedIntColumn _constructCrusadeCardId() {
    return GeneratedIntColumn(
      'crusade_card_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, crusadeCardId, name, description, createdAt, updatedAt];
  @override
  $BattleScarEntitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'battle_scar_entities';
  @override
  final String actualTableName = 'battle_scar_entities';
  @override
  VerificationContext validateIntegrity(Insertable<BattleScarEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('crusade_card_id')) {
      context.handle(
          _crusadeCardIdMeta,
          crusadeCardId.isAcceptableOrUnknown(
              data['crusade_card_id'], _crusadeCardIdMeta));
    } else if (isInserting) {
      context.missing(_crusadeCardIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BattleScarEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BattleScarEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $BattleScarEntitiesTable createAlias(String alias) {
    return $BattleScarEntitiesTable(_db, alias);
  }
}

class CrusadeCardEntity extends DataClass
    implements Insertable<CrusadeCardEntity> {
  final int id;
  final int orderOfBattleId;
  final int powerRating;
  final int rank;
  final int battleHonors;
  final int requisitionPointsSpent;
  final int experiencePoints;
  final int crusadePoints;
  final int battlesWon;
  final int battlesLost;
  final int battlesPlayed;
  final int battlesSurvived;
  final String unitName;
  final String battleFieldRole;
  final String selectableKeywords;
  final String unitType;
  final int enemyUnitsDestroyed;
  final int enemyUnitsDestroyedWithPsychicPowers;
  final int enemyUnitsDestroyedWithRangedWeapons;
  final int enemyUnitsDestroyedWithMeleeWeapons;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  CrusadeCardEntity(
      {@required this.id,
      @required this.orderOfBattleId,
      @required this.powerRating,
      @required this.rank,
      @required this.battleHonors,
      @required this.requisitionPointsSpent,
      @required this.experiencePoints,
      @required this.crusadePoints,
      @required this.battlesWon,
      @required this.battlesLost,
      @required this.battlesPlayed,
      @required this.battlesSurvived,
      @required this.unitName,
      @required this.battleFieldRole,
      @required this.selectableKeywords,
      @required this.unitType,
      @required this.enemyUnitsDestroyed,
      @required this.enemyUnitsDestroyedWithPsychicPowers,
      @required this.enemyUnitsDestroyedWithRangedWeapons,
      @required this.enemyUnitsDestroyedWithMeleeWeapons,
      this.description,
      @required this.createdAt,
      @required this.updatedAt});
  factory CrusadeCardEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return CrusadeCardEntity(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      orderOfBattleId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}order_of_battle_id']),
      powerRating: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}power_rating']),
      rank: intType.mapFromDatabaseResponse(data['${effectivePrefix}rank']),
      battleHonors: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}battle_honors']),
      requisitionPointsSpent: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}requisition_points_spent']),
      experiencePoints: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}experience_points']),
      crusadePoints: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}crusade_points']),
      battlesWon: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}battles_won']),
      battlesLost: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}battles_lost']),
      battlesPlayed: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}battles_played']),
      battlesSurvived: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}battles_survived']),
      unitName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}unit_name']),
      battleFieldRole: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}battle_field_role']),
      selectableKeywords: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}selectable_keywords']),
      unitType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}unit_type']),
      enemyUnitsDestroyed: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}enemy_units_destroyed']),
      enemyUnitsDestroyedWithPsychicPowers: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}enemy_units_destroyed_with_psychic_powers']),
      enemyUnitsDestroyedWithRangedWeapons: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}enemy_units_destroyed_with_ranged_weapons']),
      enemyUnitsDestroyedWithMeleeWeapons: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}enemy_units_destroyed_with_melee_weapons']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || orderOfBattleId != null) {
      map['order_of_battle_id'] = Variable<int>(orderOfBattleId);
    }
    if (!nullToAbsent || powerRating != null) {
      map['power_rating'] = Variable<int>(powerRating);
    }
    if (!nullToAbsent || rank != null) {
      map['rank'] = Variable<int>(rank);
    }
    if (!nullToAbsent || battleHonors != null) {
      map['battle_honors'] = Variable<int>(battleHonors);
    }
    if (!nullToAbsent || requisitionPointsSpent != null) {
      map['requisition_points_spent'] = Variable<int>(requisitionPointsSpent);
    }
    if (!nullToAbsent || experiencePoints != null) {
      map['experience_points'] = Variable<int>(experiencePoints);
    }
    if (!nullToAbsent || crusadePoints != null) {
      map['crusade_points'] = Variable<int>(crusadePoints);
    }
    if (!nullToAbsent || battlesWon != null) {
      map['battles_won'] = Variable<int>(battlesWon);
    }
    if (!nullToAbsent || battlesLost != null) {
      map['battles_lost'] = Variable<int>(battlesLost);
    }
    if (!nullToAbsent || battlesPlayed != null) {
      map['battles_played'] = Variable<int>(battlesPlayed);
    }
    if (!nullToAbsent || battlesSurvived != null) {
      map['battles_survived'] = Variable<int>(battlesSurvived);
    }
    if (!nullToAbsent || unitName != null) {
      map['unit_name'] = Variable<String>(unitName);
    }
    if (!nullToAbsent || battleFieldRole != null) {
      map['battle_field_role'] = Variable<String>(battleFieldRole);
    }
    if (!nullToAbsent || selectableKeywords != null) {
      map['selectable_keywords'] = Variable<String>(selectableKeywords);
    }
    if (!nullToAbsent || unitType != null) {
      map['unit_type'] = Variable<String>(unitType);
    }
    if (!nullToAbsent || enemyUnitsDestroyed != null) {
      map['enemy_units_destroyed'] = Variable<int>(enemyUnitsDestroyed);
    }
    if (!nullToAbsent || enemyUnitsDestroyedWithPsychicPowers != null) {
      map['enemy_units_destroyed_with_psychic_powers'] =
          Variable<int>(enemyUnitsDestroyedWithPsychicPowers);
    }
    if (!nullToAbsent || enemyUnitsDestroyedWithRangedWeapons != null) {
      map['enemy_units_destroyed_with_ranged_weapons'] =
          Variable<int>(enemyUnitsDestroyedWithRangedWeapons);
    }
    if (!nullToAbsent || enemyUnitsDestroyedWithMeleeWeapons != null) {
      map['enemy_units_destroyed_with_melee_weapons'] =
          Variable<int>(enemyUnitsDestroyedWithMeleeWeapons);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  CrusadeCardEntitiesCompanion toCompanion(bool nullToAbsent) {
    return CrusadeCardEntitiesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      orderOfBattleId: orderOfBattleId == null && nullToAbsent
          ? const Value.absent()
          : Value(orderOfBattleId),
      powerRating: powerRating == null && nullToAbsent
          ? const Value.absent()
          : Value(powerRating),
      rank: rank == null && nullToAbsent ? const Value.absent() : Value(rank),
      battleHonors: battleHonors == null && nullToAbsent
          ? const Value.absent()
          : Value(battleHonors),
      requisitionPointsSpent: requisitionPointsSpent == null && nullToAbsent
          ? const Value.absent()
          : Value(requisitionPointsSpent),
      experiencePoints: experiencePoints == null && nullToAbsent
          ? const Value.absent()
          : Value(experiencePoints),
      crusadePoints: crusadePoints == null && nullToAbsent
          ? const Value.absent()
          : Value(crusadePoints),
      battlesWon: battlesWon == null && nullToAbsent
          ? const Value.absent()
          : Value(battlesWon),
      battlesLost: battlesLost == null && nullToAbsent
          ? const Value.absent()
          : Value(battlesLost),
      battlesPlayed: battlesPlayed == null && nullToAbsent
          ? const Value.absent()
          : Value(battlesPlayed),
      battlesSurvived: battlesSurvived == null && nullToAbsent
          ? const Value.absent()
          : Value(battlesSurvived),
      unitName: unitName == null && nullToAbsent
          ? const Value.absent()
          : Value(unitName),
      battleFieldRole: battleFieldRole == null && nullToAbsent
          ? const Value.absent()
          : Value(battleFieldRole),
      selectableKeywords: selectableKeywords == null && nullToAbsent
          ? const Value.absent()
          : Value(selectableKeywords),
      unitType: unitType == null && nullToAbsent
          ? const Value.absent()
          : Value(unitType),
      enemyUnitsDestroyed: enemyUnitsDestroyed == null && nullToAbsent
          ? const Value.absent()
          : Value(enemyUnitsDestroyed),
      enemyUnitsDestroyedWithPsychicPowers:
          enemyUnitsDestroyedWithPsychicPowers == null && nullToAbsent
              ? const Value.absent()
              : Value(enemyUnitsDestroyedWithPsychicPowers),
      enemyUnitsDestroyedWithRangedWeapons:
          enemyUnitsDestroyedWithRangedWeapons == null && nullToAbsent
              ? const Value.absent()
              : Value(enemyUnitsDestroyedWithRangedWeapons),
      enemyUnitsDestroyedWithMeleeWeapons:
          enemyUnitsDestroyedWithMeleeWeapons == null && nullToAbsent
              ? const Value.absent()
              : Value(enemyUnitsDestroyedWithMeleeWeapons),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory CrusadeCardEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CrusadeCardEntity(
      id: serializer.fromJson<int>(json['id']),
      orderOfBattleId: serializer.fromJson<int>(json['orderOfBattleId']),
      powerRating: serializer.fromJson<int>(json['powerRating']),
      rank: serializer.fromJson<int>(json['rank']),
      battleHonors: serializer.fromJson<int>(json['battleHonors']),
      requisitionPointsSpent:
          serializer.fromJson<int>(json['requisitionPointsSpent']),
      experiencePoints: serializer.fromJson<int>(json['experiencePoints']),
      crusadePoints: serializer.fromJson<int>(json['crusadePoints']),
      battlesWon: serializer.fromJson<int>(json['battlesWon']),
      battlesLost: serializer.fromJson<int>(json['battlesLost']),
      battlesPlayed: serializer.fromJson<int>(json['battlesPlayed']),
      battlesSurvived: serializer.fromJson<int>(json['battlesSurvived']),
      unitName: serializer.fromJson<String>(json['unitName']),
      battleFieldRole: serializer.fromJson<String>(json['battleFieldRole']),
      selectableKeywords:
          serializer.fromJson<String>(json['selectableKeywords']),
      unitType: serializer.fromJson<String>(json['unitType']),
      enemyUnitsDestroyed:
          serializer.fromJson<int>(json['enemyUnitsDestroyed']),
      enemyUnitsDestroyedWithPsychicPowers: serializer
          .fromJson<int>(json['enemyUnitsDestroyedWithPsychicPowers']),
      enemyUnitsDestroyedWithRangedWeapons: serializer
          .fromJson<int>(json['enemyUnitsDestroyedWithRangedWeapons']),
      enemyUnitsDestroyedWithMeleeWeapons:
          serializer.fromJson<int>(json['enemyUnitsDestroyedWithMeleeWeapons']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'orderOfBattleId': serializer.toJson<int>(orderOfBattleId),
      'powerRating': serializer.toJson<int>(powerRating),
      'rank': serializer.toJson<int>(rank),
      'battleHonors': serializer.toJson<int>(battleHonors),
      'requisitionPointsSpent': serializer.toJson<int>(requisitionPointsSpent),
      'experiencePoints': serializer.toJson<int>(experiencePoints),
      'crusadePoints': serializer.toJson<int>(crusadePoints),
      'battlesWon': serializer.toJson<int>(battlesWon),
      'battlesLost': serializer.toJson<int>(battlesLost),
      'battlesPlayed': serializer.toJson<int>(battlesPlayed),
      'battlesSurvived': serializer.toJson<int>(battlesSurvived),
      'unitName': serializer.toJson<String>(unitName),
      'battleFieldRole': serializer.toJson<String>(battleFieldRole),
      'selectableKeywords': serializer.toJson<String>(selectableKeywords),
      'unitType': serializer.toJson<String>(unitType),
      'enemyUnitsDestroyed': serializer.toJson<int>(enemyUnitsDestroyed),
      'enemyUnitsDestroyedWithPsychicPowers':
          serializer.toJson<int>(enemyUnitsDestroyedWithPsychicPowers),
      'enemyUnitsDestroyedWithRangedWeapons':
          serializer.toJson<int>(enemyUnitsDestroyedWithRangedWeapons),
      'enemyUnitsDestroyedWithMeleeWeapons':
          serializer.toJson<int>(enemyUnitsDestroyedWithMeleeWeapons),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  CrusadeCardEntity copyWith(
          {int id,
          int orderOfBattleId,
          int powerRating,
          int rank,
          int battleHonors,
          int requisitionPointsSpent,
          int experiencePoints,
          int crusadePoints,
          int battlesWon,
          int battlesLost,
          int battlesPlayed,
          int battlesSurvived,
          String unitName,
          String battleFieldRole,
          String selectableKeywords,
          String unitType,
          int enemyUnitsDestroyed,
          int enemyUnitsDestroyedWithPsychicPowers,
          int enemyUnitsDestroyedWithRangedWeapons,
          int enemyUnitsDestroyedWithMeleeWeapons,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      CrusadeCardEntity(
        id: id ?? this.id,
        orderOfBattleId: orderOfBattleId ?? this.orderOfBattleId,
        powerRating: powerRating ?? this.powerRating,
        rank: rank ?? this.rank,
        battleHonors: battleHonors ?? this.battleHonors,
        requisitionPointsSpent:
            requisitionPointsSpent ?? this.requisitionPointsSpent,
        experiencePoints: experiencePoints ?? this.experiencePoints,
        crusadePoints: crusadePoints ?? this.crusadePoints,
        battlesWon: battlesWon ?? this.battlesWon,
        battlesLost: battlesLost ?? this.battlesLost,
        battlesPlayed: battlesPlayed ?? this.battlesPlayed,
        battlesSurvived: battlesSurvived ?? this.battlesSurvived,
        unitName: unitName ?? this.unitName,
        battleFieldRole: battleFieldRole ?? this.battleFieldRole,
        selectableKeywords: selectableKeywords ?? this.selectableKeywords,
        unitType: unitType ?? this.unitType,
        enemyUnitsDestroyed: enemyUnitsDestroyed ?? this.enemyUnitsDestroyed,
        enemyUnitsDestroyedWithPsychicPowers:
            enemyUnitsDestroyedWithPsychicPowers ??
                this.enemyUnitsDestroyedWithPsychicPowers,
        enemyUnitsDestroyedWithRangedWeapons:
            enemyUnitsDestroyedWithRangedWeapons ??
                this.enemyUnitsDestroyedWithRangedWeapons,
        enemyUnitsDestroyedWithMeleeWeapons:
            enemyUnitsDestroyedWithMeleeWeapons ??
                this.enemyUnitsDestroyedWithMeleeWeapons,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('CrusadeCardEntity(')
          ..write('id: $id, ')
          ..write('orderOfBattleId: $orderOfBattleId, ')
          ..write('powerRating: $powerRating, ')
          ..write('rank: $rank, ')
          ..write('battleHonors: $battleHonors, ')
          ..write('requisitionPointsSpent: $requisitionPointsSpent, ')
          ..write('experiencePoints: $experiencePoints, ')
          ..write('crusadePoints: $crusadePoints, ')
          ..write('battlesWon: $battlesWon, ')
          ..write('battlesLost: $battlesLost, ')
          ..write('battlesPlayed: $battlesPlayed, ')
          ..write('battlesSurvived: $battlesSurvived, ')
          ..write('unitName: $unitName, ')
          ..write('battleFieldRole: $battleFieldRole, ')
          ..write('selectableKeywords: $selectableKeywords, ')
          ..write('unitType: $unitType, ')
          ..write('enemyUnitsDestroyed: $enemyUnitsDestroyed, ')
          ..write(
              'enemyUnitsDestroyedWithPsychicPowers: $enemyUnitsDestroyedWithPsychicPowers, ')
          ..write(
              'enemyUnitsDestroyedWithRangedWeapons: $enemyUnitsDestroyedWithRangedWeapons, ')
          ..write(
              'enemyUnitsDestroyedWithMeleeWeapons: $enemyUnitsDestroyedWithMeleeWeapons, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          orderOfBattleId.hashCode,
          $mrjc(
              powerRating.hashCode,
              $mrjc(
                  rank.hashCode,
                  $mrjc(
                      battleHonors.hashCode,
                      $mrjc(
                          requisitionPointsSpent.hashCode,
                          $mrjc(
                              experiencePoints.hashCode,
                              $mrjc(
                                  crusadePoints.hashCode,
                                  $mrjc(
                                      battlesWon.hashCode,
                                      $mrjc(
                                          battlesLost.hashCode,
                                          $mrjc(
                                              battlesPlayed.hashCode,
                                              $mrjc(
                                                  battlesSurvived.hashCode,
                                                  $mrjc(
                                                      unitName.hashCode,
                                                      $mrjc(
                                                          battleFieldRole
                                                              .hashCode,
                                                          $mrjc(
                                                              selectableKeywords
                                                                  .hashCode,
                                                              $mrjc(
                                                                  unitType
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      enemyUnitsDestroyed
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          enemyUnitsDestroyedWithPsychicPowers
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              enemyUnitsDestroyedWithRangedWeapons.hashCode,
                                                                              $mrjc(enemyUnitsDestroyedWithMeleeWeapons.hashCode, $mrjc(description.hashCode, $mrjc(createdAt.hashCode, updatedAt.hashCode)))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CrusadeCardEntity &&
          other.id == this.id &&
          other.orderOfBattleId == this.orderOfBattleId &&
          other.powerRating == this.powerRating &&
          other.rank == this.rank &&
          other.battleHonors == this.battleHonors &&
          other.requisitionPointsSpent == this.requisitionPointsSpent &&
          other.experiencePoints == this.experiencePoints &&
          other.crusadePoints == this.crusadePoints &&
          other.battlesWon == this.battlesWon &&
          other.battlesLost == this.battlesLost &&
          other.battlesPlayed == this.battlesPlayed &&
          other.battlesSurvived == this.battlesSurvived &&
          other.unitName == this.unitName &&
          other.battleFieldRole == this.battleFieldRole &&
          other.selectableKeywords == this.selectableKeywords &&
          other.unitType == this.unitType &&
          other.enemyUnitsDestroyed == this.enemyUnitsDestroyed &&
          other.enemyUnitsDestroyedWithPsychicPowers ==
              this.enemyUnitsDestroyedWithPsychicPowers &&
          other.enemyUnitsDestroyedWithRangedWeapons ==
              this.enemyUnitsDestroyedWithRangedWeapons &&
          other.enemyUnitsDestroyedWithMeleeWeapons ==
              this.enemyUnitsDestroyedWithMeleeWeapons &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CrusadeCardEntitiesCompanion extends UpdateCompanion<CrusadeCardEntity> {
  final Value<int> id;
  final Value<int> orderOfBattleId;
  final Value<int> powerRating;
  final Value<int> rank;
  final Value<int> battleHonors;
  final Value<int> requisitionPointsSpent;
  final Value<int> experiencePoints;
  final Value<int> crusadePoints;
  final Value<int> battlesWon;
  final Value<int> battlesLost;
  final Value<int> battlesPlayed;
  final Value<int> battlesSurvived;
  final Value<String> unitName;
  final Value<String> battleFieldRole;
  final Value<String> selectableKeywords;
  final Value<String> unitType;
  final Value<int> enemyUnitsDestroyed;
  final Value<int> enemyUnitsDestroyedWithPsychicPowers;
  final Value<int> enemyUnitsDestroyedWithRangedWeapons;
  final Value<int> enemyUnitsDestroyedWithMeleeWeapons;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const CrusadeCardEntitiesCompanion({
    this.id = const Value.absent(),
    this.orderOfBattleId = const Value.absent(),
    this.powerRating = const Value.absent(),
    this.rank = const Value.absent(),
    this.battleHonors = const Value.absent(),
    this.requisitionPointsSpent = const Value.absent(),
    this.experiencePoints = const Value.absent(),
    this.crusadePoints = const Value.absent(),
    this.battlesWon = const Value.absent(),
    this.battlesLost = const Value.absent(),
    this.battlesPlayed = const Value.absent(),
    this.battlesSurvived = const Value.absent(),
    this.unitName = const Value.absent(),
    this.battleFieldRole = const Value.absent(),
    this.selectableKeywords = const Value.absent(),
    this.unitType = const Value.absent(),
    this.enemyUnitsDestroyed = const Value.absent(),
    this.enemyUnitsDestroyedWithPsychicPowers = const Value.absent(),
    this.enemyUnitsDestroyedWithRangedWeapons = const Value.absent(),
    this.enemyUnitsDestroyedWithMeleeWeapons = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CrusadeCardEntitiesCompanion.insert({
    this.id = const Value.absent(),
    @required int orderOfBattleId,
    @required int powerRating,
    @required int rank,
    @required int battleHonors,
    @required int requisitionPointsSpent,
    @required int experiencePoints,
    @required int crusadePoints,
    @required int battlesWon,
    @required int battlesLost,
    @required int battlesPlayed,
    @required int battlesSurvived,
    @required String unitName,
    @required String battleFieldRole,
    @required String selectableKeywords,
    @required String unitType,
    @required int enemyUnitsDestroyed,
    @required int enemyUnitsDestroyedWithPsychicPowers,
    @required int enemyUnitsDestroyedWithRangedWeapons,
    @required int enemyUnitsDestroyedWithMeleeWeapons,
    this.description = const Value.absent(),
    @required DateTime createdAt,
    @required DateTime updatedAt,
  })  : orderOfBattleId = Value(orderOfBattleId),
        powerRating = Value(powerRating),
        rank = Value(rank),
        battleHonors = Value(battleHonors),
        requisitionPointsSpent = Value(requisitionPointsSpent),
        experiencePoints = Value(experiencePoints),
        crusadePoints = Value(crusadePoints),
        battlesWon = Value(battlesWon),
        battlesLost = Value(battlesLost),
        battlesPlayed = Value(battlesPlayed),
        battlesSurvived = Value(battlesSurvived),
        unitName = Value(unitName),
        battleFieldRole = Value(battleFieldRole),
        selectableKeywords = Value(selectableKeywords),
        unitType = Value(unitType),
        enemyUnitsDestroyed = Value(enemyUnitsDestroyed),
        enemyUnitsDestroyedWithPsychicPowers =
            Value(enemyUnitsDestroyedWithPsychicPowers),
        enemyUnitsDestroyedWithRangedWeapons =
            Value(enemyUnitsDestroyedWithRangedWeapons),
        enemyUnitsDestroyedWithMeleeWeapons =
            Value(enemyUnitsDestroyedWithMeleeWeapons),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<CrusadeCardEntity> custom({
    Expression<int> id,
    Expression<int> orderOfBattleId,
    Expression<int> powerRating,
    Expression<int> rank,
    Expression<int> battleHonors,
    Expression<int> requisitionPointsSpent,
    Expression<int> experiencePoints,
    Expression<int> crusadePoints,
    Expression<int> battlesWon,
    Expression<int> battlesLost,
    Expression<int> battlesPlayed,
    Expression<int> battlesSurvived,
    Expression<String> unitName,
    Expression<String> battleFieldRole,
    Expression<String> selectableKeywords,
    Expression<String> unitType,
    Expression<int> enemyUnitsDestroyed,
    Expression<int> enemyUnitsDestroyedWithPsychicPowers,
    Expression<int> enemyUnitsDestroyedWithRangedWeapons,
    Expression<int> enemyUnitsDestroyedWithMeleeWeapons,
    Expression<String> description,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (orderOfBattleId != null) 'order_of_battle_id': orderOfBattleId,
      if (powerRating != null) 'power_rating': powerRating,
      if (rank != null) 'rank': rank,
      if (battleHonors != null) 'battle_honors': battleHonors,
      if (requisitionPointsSpent != null)
        'requisition_points_spent': requisitionPointsSpent,
      if (experiencePoints != null) 'experience_points': experiencePoints,
      if (crusadePoints != null) 'crusade_points': crusadePoints,
      if (battlesWon != null) 'battles_won': battlesWon,
      if (battlesLost != null) 'battles_lost': battlesLost,
      if (battlesPlayed != null) 'battles_played': battlesPlayed,
      if (battlesSurvived != null) 'battles_survived': battlesSurvived,
      if (unitName != null) 'unit_name': unitName,
      if (battleFieldRole != null) 'battle_field_role': battleFieldRole,
      if (selectableKeywords != null) 'selectable_keywords': selectableKeywords,
      if (unitType != null) 'unit_type': unitType,
      if (enemyUnitsDestroyed != null)
        'enemy_units_destroyed': enemyUnitsDestroyed,
      if (enemyUnitsDestroyedWithPsychicPowers != null)
        'enemy_units_destroyed_with_psychic_powers':
            enemyUnitsDestroyedWithPsychicPowers,
      if (enemyUnitsDestroyedWithRangedWeapons != null)
        'enemy_units_destroyed_with_ranged_weapons':
            enemyUnitsDestroyedWithRangedWeapons,
      if (enemyUnitsDestroyedWithMeleeWeapons != null)
        'enemy_units_destroyed_with_melee_weapons':
            enemyUnitsDestroyedWithMeleeWeapons,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CrusadeCardEntitiesCompanion copyWith(
      {Value<int> id,
      Value<int> orderOfBattleId,
      Value<int> powerRating,
      Value<int> rank,
      Value<int> battleHonors,
      Value<int> requisitionPointsSpent,
      Value<int> experiencePoints,
      Value<int> crusadePoints,
      Value<int> battlesWon,
      Value<int> battlesLost,
      Value<int> battlesPlayed,
      Value<int> battlesSurvived,
      Value<String> unitName,
      Value<String> battleFieldRole,
      Value<String> selectableKeywords,
      Value<String> unitType,
      Value<int> enemyUnitsDestroyed,
      Value<int> enemyUnitsDestroyedWithPsychicPowers,
      Value<int> enemyUnitsDestroyedWithRangedWeapons,
      Value<int> enemyUnitsDestroyedWithMeleeWeapons,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return CrusadeCardEntitiesCompanion(
      id: id ?? this.id,
      orderOfBattleId: orderOfBattleId ?? this.orderOfBattleId,
      powerRating: powerRating ?? this.powerRating,
      rank: rank ?? this.rank,
      battleHonors: battleHonors ?? this.battleHonors,
      requisitionPointsSpent:
          requisitionPointsSpent ?? this.requisitionPointsSpent,
      experiencePoints: experiencePoints ?? this.experiencePoints,
      crusadePoints: crusadePoints ?? this.crusadePoints,
      battlesWon: battlesWon ?? this.battlesWon,
      battlesLost: battlesLost ?? this.battlesLost,
      battlesPlayed: battlesPlayed ?? this.battlesPlayed,
      battlesSurvived: battlesSurvived ?? this.battlesSurvived,
      unitName: unitName ?? this.unitName,
      battleFieldRole: battleFieldRole ?? this.battleFieldRole,
      selectableKeywords: selectableKeywords ?? this.selectableKeywords,
      unitType: unitType ?? this.unitType,
      enemyUnitsDestroyed: enemyUnitsDestroyed ?? this.enemyUnitsDestroyed,
      enemyUnitsDestroyedWithPsychicPowers:
          enemyUnitsDestroyedWithPsychicPowers ??
              this.enemyUnitsDestroyedWithPsychicPowers,
      enemyUnitsDestroyedWithRangedWeapons:
          enemyUnitsDestroyedWithRangedWeapons ??
              this.enemyUnitsDestroyedWithRangedWeapons,
      enemyUnitsDestroyedWithMeleeWeapons:
          enemyUnitsDestroyedWithMeleeWeapons ??
              this.enemyUnitsDestroyedWithMeleeWeapons,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (orderOfBattleId.present) {
      map['order_of_battle_id'] = Variable<int>(orderOfBattleId.value);
    }
    if (powerRating.present) {
      map['power_rating'] = Variable<int>(powerRating.value);
    }
    if (rank.present) {
      map['rank'] = Variable<int>(rank.value);
    }
    if (battleHonors.present) {
      map['battle_honors'] = Variable<int>(battleHonors.value);
    }
    if (requisitionPointsSpent.present) {
      map['requisition_points_spent'] =
          Variable<int>(requisitionPointsSpent.value);
    }
    if (experiencePoints.present) {
      map['experience_points'] = Variable<int>(experiencePoints.value);
    }
    if (crusadePoints.present) {
      map['crusade_points'] = Variable<int>(crusadePoints.value);
    }
    if (battlesWon.present) {
      map['battles_won'] = Variable<int>(battlesWon.value);
    }
    if (battlesLost.present) {
      map['battles_lost'] = Variable<int>(battlesLost.value);
    }
    if (battlesPlayed.present) {
      map['battles_played'] = Variable<int>(battlesPlayed.value);
    }
    if (battlesSurvived.present) {
      map['battles_survived'] = Variable<int>(battlesSurvived.value);
    }
    if (unitName.present) {
      map['unit_name'] = Variable<String>(unitName.value);
    }
    if (battleFieldRole.present) {
      map['battle_field_role'] = Variable<String>(battleFieldRole.value);
    }
    if (selectableKeywords.present) {
      map['selectable_keywords'] = Variable<String>(selectableKeywords.value);
    }
    if (unitType.present) {
      map['unit_type'] = Variable<String>(unitType.value);
    }
    if (enemyUnitsDestroyed.present) {
      map['enemy_units_destroyed'] = Variable<int>(enemyUnitsDestroyed.value);
    }
    if (enemyUnitsDestroyedWithPsychicPowers.present) {
      map['enemy_units_destroyed_with_psychic_powers'] =
          Variable<int>(enemyUnitsDestroyedWithPsychicPowers.value);
    }
    if (enemyUnitsDestroyedWithRangedWeapons.present) {
      map['enemy_units_destroyed_with_ranged_weapons'] =
          Variable<int>(enemyUnitsDestroyedWithRangedWeapons.value);
    }
    if (enemyUnitsDestroyedWithMeleeWeapons.present) {
      map['enemy_units_destroyed_with_melee_weapons'] =
          Variable<int>(enemyUnitsDestroyedWithMeleeWeapons.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CrusadeCardEntitiesCompanion(')
          ..write('id: $id, ')
          ..write('orderOfBattleId: $orderOfBattleId, ')
          ..write('powerRating: $powerRating, ')
          ..write('rank: $rank, ')
          ..write('battleHonors: $battleHonors, ')
          ..write('requisitionPointsSpent: $requisitionPointsSpent, ')
          ..write('experiencePoints: $experiencePoints, ')
          ..write('crusadePoints: $crusadePoints, ')
          ..write('battlesWon: $battlesWon, ')
          ..write('battlesLost: $battlesLost, ')
          ..write('battlesPlayed: $battlesPlayed, ')
          ..write('battlesSurvived: $battlesSurvived, ')
          ..write('unitName: $unitName, ')
          ..write('battleFieldRole: $battleFieldRole, ')
          ..write('selectableKeywords: $selectableKeywords, ')
          ..write('unitType: $unitType, ')
          ..write('enemyUnitsDestroyed: $enemyUnitsDestroyed, ')
          ..write(
              'enemyUnitsDestroyedWithPsychicPowers: $enemyUnitsDestroyedWithPsychicPowers, ')
          ..write(
              'enemyUnitsDestroyedWithRangedWeapons: $enemyUnitsDestroyedWithRangedWeapons, ')
          ..write(
              'enemyUnitsDestroyedWithMeleeWeapons: $enemyUnitsDestroyedWithMeleeWeapons, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CrusadeCardEntitiesTable extends CrusadeCardEntities
    with TableInfo<$CrusadeCardEntitiesTable, CrusadeCardEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $CrusadeCardEntitiesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _orderOfBattleIdMeta =
      const VerificationMeta('orderOfBattleId');
  GeneratedIntColumn _orderOfBattleId;
  @override
  GeneratedIntColumn get orderOfBattleId =>
      _orderOfBattleId ??= _constructOrderOfBattleId();
  GeneratedIntColumn _constructOrderOfBattleId() {
    return GeneratedIntColumn(
      'order_of_battle_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _powerRatingMeta =
      const VerificationMeta('powerRating');
  GeneratedIntColumn _powerRating;
  @override
  GeneratedIntColumn get powerRating =>
      _powerRating ??= _constructPowerRating();
  GeneratedIntColumn _constructPowerRating() {
    return GeneratedIntColumn(
      'power_rating',
      $tableName,
      false,
    );
  }

  final VerificationMeta _rankMeta = const VerificationMeta('rank');
  GeneratedIntColumn _rank;
  @override
  GeneratedIntColumn get rank => _rank ??= _constructRank();
  GeneratedIntColumn _constructRank() {
    return GeneratedIntColumn(
      'rank',
      $tableName,
      false,
    );
  }

  final VerificationMeta _battleHonorsMeta =
      const VerificationMeta('battleHonors');
  GeneratedIntColumn _battleHonors;
  @override
  GeneratedIntColumn get battleHonors =>
      _battleHonors ??= _constructBattleHonors();
  GeneratedIntColumn _constructBattleHonors() {
    return GeneratedIntColumn(
      'battle_honors',
      $tableName,
      false,
    );
  }

  final VerificationMeta _requisitionPointsSpentMeta =
      const VerificationMeta('requisitionPointsSpent');
  GeneratedIntColumn _requisitionPointsSpent;
  @override
  GeneratedIntColumn get requisitionPointsSpent =>
      _requisitionPointsSpent ??= _constructRequisitionPointsSpent();
  GeneratedIntColumn _constructRequisitionPointsSpent() {
    return GeneratedIntColumn(
      'requisition_points_spent',
      $tableName,
      false,
    );
  }

  final VerificationMeta _experiencePointsMeta =
      const VerificationMeta('experiencePoints');
  GeneratedIntColumn _experiencePoints;
  @override
  GeneratedIntColumn get experiencePoints =>
      _experiencePoints ??= _constructExperiencePoints();
  GeneratedIntColumn _constructExperiencePoints() {
    return GeneratedIntColumn(
      'experience_points',
      $tableName,
      false,
    );
  }

  final VerificationMeta _crusadePointsMeta =
      const VerificationMeta('crusadePoints');
  GeneratedIntColumn _crusadePoints;
  @override
  GeneratedIntColumn get crusadePoints =>
      _crusadePoints ??= _constructCrusadePoints();
  GeneratedIntColumn _constructCrusadePoints() {
    return GeneratedIntColumn(
      'crusade_points',
      $tableName,
      false,
    );
  }

  final VerificationMeta _battlesWonMeta = const VerificationMeta('battlesWon');
  GeneratedIntColumn _battlesWon;
  @override
  GeneratedIntColumn get battlesWon => _battlesWon ??= _constructBattlesWon();
  GeneratedIntColumn _constructBattlesWon() {
    return GeneratedIntColumn(
      'battles_won',
      $tableName,
      false,
    );
  }

  final VerificationMeta _battlesLostMeta =
      const VerificationMeta('battlesLost');
  GeneratedIntColumn _battlesLost;
  @override
  GeneratedIntColumn get battlesLost =>
      _battlesLost ??= _constructBattlesLost();
  GeneratedIntColumn _constructBattlesLost() {
    return GeneratedIntColumn(
      'battles_lost',
      $tableName,
      false,
    );
  }

  final VerificationMeta _battlesPlayedMeta =
      const VerificationMeta('battlesPlayed');
  GeneratedIntColumn _battlesPlayed;
  @override
  GeneratedIntColumn get battlesPlayed =>
      _battlesPlayed ??= _constructBattlesPlayed();
  GeneratedIntColumn _constructBattlesPlayed() {
    return GeneratedIntColumn(
      'battles_played',
      $tableName,
      false,
    );
  }

  final VerificationMeta _battlesSurvivedMeta =
      const VerificationMeta('battlesSurvived');
  GeneratedIntColumn _battlesSurvived;
  @override
  GeneratedIntColumn get battlesSurvived =>
      _battlesSurvived ??= _constructBattlesSurvived();
  GeneratedIntColumn _constructBattlesSurvived() {
    return GeneratedIntColumn(
      'battles_survived',
      $tableName,
      false,
    );
  }

  final VerificationMeta _unitNameMeta = const VerificationMeta('unitName');
  GeneratedTextColumn _unitName;
  @override
  GeneratedTextColumn get unitName => _unitName ??= _constructUnitName();
  GeneratedTextColumn _constructUnitName() {
    return GeneratedTextColumn('unit_name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _battleFieldRoleMeta =
      const VerificationMeta('battleFieldRole');
  GeneratedTextColumn _battleFieldRole;
  @override
  GeneratedTextColumn get battleFieldRole =>
      _battleFieldRole ??= _constructBattleFieldRole();
  GeneratedTextColumn _constructBattleFieldRole() {
    return GeneratedTextColumn('battle_field_role', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _selectableKeywordsMeta =
      const VerificationMeta('selectableKeywords');
  GeneratedTextColumn _selectableKeywords;
  @override
  GeneratedTextColumn get selectableKeywords =>
      _selectableKeywords ??= _constructSelectableKeywords();
  GeneratedTextColumn _constructSelectableKeywords() {
    return GeneratedTextColumn('selectable_keywords', $tableName, false,
        minTextLength: 1, maxTextLength: 250);
  }

  final VerificationMeta _unitTypeMeta = const VerificationMeta('unitType');
  GeneratedTextColumn _unitType;
  @override
  GeneratedTextColumn get unitType => _unitType ??= _constructUnitType();
  GeneratedTextColumn _constructUnitType() {
    return GeneratedTextColumn('unit_type', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _enemyUnitsDestroyedMeta =
      const VerificationMeta('enemyUnitsDestroyed');
  GeneratedIntColumn _enemyUnitsDestroyed;
  @override
  GeneratedIntColumn get enemyUnitsDestroyed =>
      _enemyUnitsDestroyed ??= _constructEnemyUnitsDestroyed();
  GeneratedIntColumn _constructEnemyUnitsDestroyed() {
    return GeneratedIntColumn(
      'enemy_units_destroyed',
      $tableName,
      false,
    );
  }

  final VerificationMeta _enemyUnitsDestroyedWithPsychicPowersMeta =
      const VerificationMeta('enemyUnitsDestroyedWithPsychicPowers');
  GeneratedIntColumn _enemyUnitsDestroyedWithPsychicPowers;
  @override
  GeneratedIntColumn get enemyUnitsDestroyedWithPsychicPowers =>
      _enemyUnitsDestroyedWithPsychicPowers ??=
          _constructEnemyUnitsDestroyedWithPsychicPowers();
  GeneratedIntColumn _constructEnemyUnitsDestroyedWithPsychicPowers() {
    return GeneratedIntColumn(
      'enemy_units_destroyed_with_psychic_powers',
      $tableName,
      false,
    );
  }

  final VerificationMeta _enemyUnitsDestroyedWithRangedWeaponsMeta =
      const VerificationMeta('enemyUnitsDestroyedWithRangedWeapons');
  GeneratedIntColumn _enemyUnitsDestroyedWithRangedWeapons;
  @override
  GeneratedIntColumn get enemyUnitsDestroyedWithRangedWeapons =>
      _enemyUnitsDestroyedWithRangedWeapons ??=
          _constructEnemyUnitsDestroyedWithRangedWeapons();
  GeneratedIntColumn _constructEnemyUnitsDestroyedWithRangedWeapons() {
    return GeneratedIntColumn(
      'enemy_units_destroyed_with_ranged_weapons',
      $tableName,
      false,
    );
  }

  final VerificationMeta _enemyUnitsDestroyedWithMeleeWeaponsMeta =
      const VerificationMeta('enemyUnitsDestroyedWithMeleeWeapons');
  GeneratedIntColumn _enemyUnitsDestroyedWithMeleeWeapons;
  @override
  GeneratedIntColumn get enemyUnitsDestroyedWithMeleeWeapons =>
      _enemyUnitsDestroyedWithMeleeWeapons ??=
          _constructEnemyUnitsDestroyedWithMeleeWeapons();
  GeneratedIntColumn _constructEnemyUnitsDestroyedWithMeleeWeapons() {
    return GeneratedIntColumn(
      'enemy_units_destroyed_with_melee_weapons',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        orderOfBattleId,
        powerRating,
        rank,
        battleHonors,
        requisitionPointsSpent,
        experiencePoints,
        crusadePoints,
        battlesWon,
        battlesLost,
        battlesPlayed,
        battlesSurvived,
        unitName,
        battleFieldRole,
        selectableKeywords,
        unitType,
        enemyUnitsDestroyed,
        enemyUnitsDestroyedWithPsychicPowers,
        enemyUnitsDestroyedWithRangedWeapons,
        enemyUnitsDestroyedWithMeleeWeapons,
        description,
        createdAt,
        updatedAt
      ];
  @override
  $CrusadeCardEntitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'crusade_card_entities';
  @override
  final String actualTableName = 'crusade_card_entities';
  @override
  VerificationContext validateIntegrity(Insertable<CrusadeCardEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('order_of_battle_id')) {
      context.handle(
          _orderOfBattleIdMeta,
          orderOfBattleId.isAcceptableOrUnknown(
              data['order_of_battle_id'], _orderOfBattleIdMeta));
    } else if (isInserting) {
      context.missing(_orderOfBattleIdMeta);
    }
    if (data.containsKey('power_rating')) {
      context.handle(
          _powerRatingMeta,
          powerRating.isAcceptableOrUnknown(
              data['power_rating'], _powerRatingMeta));
    } else if (isInserting) {
      context.missing(_powerRatingMeta);
    }
    if (data.containsKey('rank')) {
      context.handle(
          _rankMeta, rank.isAcceptableOrUnknown(data['rank'], _rankMeta));
    } else if (isInserting) {
      context.missing(_rankMeta);
    }
    if (data.containsKey('battle_honors')) {
      context.handle(
          _battleHonorsMeta,
          battleHonors.isAcceptableOrUnknown(
              data['battle_honors'], _battleHonorsMeta));
    } else if (isInserting) {
      context.missing(_battleHonorsMeta);
    }
    if (data.containsKey('requisition_points_spent')) {
      context.handle(
          _requisitionPointsSpentMeta,
          requisitionPointsSpent.isAcceptableOrUnknown(
              data['requisition_points_spent'], _requisitionPointsSpentMeta));
    } else if (isInserting) {
      context.missing(_requisitionPointsSpentMeta);
    }
    if (data.containsKey('experience_points')) {
      context.handle(
          _experiencePointsMeta,
          experiencePoints.isAcceptableOrUnknown(
              data['experience_points'], _experiencePointsMeta));
    } else if (isInserting) {
      context.missing(_experiencePointsMeta);
    }
    if (data.containsKey('crusade_points')) {
      context.handle(
          _crusadePointsMeta,
          crusadePoints.isAcceptableOrUnknown(
              data['crusade_points'], _crusadePointsMeta));
    } else if (isInserting) {
      context.missing(_crusadePointsMeta);
    }
    if (data.containsKey('battles_won')) {
      context.handle(
          _battlesWonMeta,
          battlesWon.isAcceptableOrUnknown(
              data['battles_won'], _battlesWonMeta));
    } else if (isInserting) {
      context.missing(_battlesWonMeta);
    }
    if (data.containsKey('battles_lost')) {
      context.handle(
          _battlesLostMeta,
          battlesLost.isAcceptableOrUnknown(
              data['battles_lost'], _battlesLostMeta));
    } else if (isInserting) {
      context.missing(_battlesLostMeta);
    }
    if (data.containsKey('battles_played')) {
      context.handle(
          _battlesPlayedMeta,
          battlesPlayed.isAcceptableOrUnknown(
              data['battles_played'], _battlesPlayedMeta));
    } else if (isInserting) {
      context.missing(_battlesPlayedMeta);
    }
    if (data.containsKey('battles_survived')) {
      context.handle(
          _battlesSurvivedMeta,
          battlesSurvived.isAcceptableOrUnknown(
              data['battles_survived'], _battlesSurvivedMeta));
    } else if (isInserting) {
      context.missing(_battlesSurvivedMeta);
    }
    if (data.containsKey('unit_name')) {
      context.handle(_unitNameMeta,
          unitName.isAcceptableOrUnknown(data['unit_name'], _unitNameMeta));
    } else if (isInserting) {
      context.missing(_unitNameMeta);
    }
    if (data.containsKey('battle_field_role')) {
      context.handle(
          _battleFieldRoleMeta,
          battleFieldRole.isAcceptableOrUnknown(
              data['battle_field_role'], _battleFieldRoleMeta));
    } else if (isInserting) {
      context.missing(_battleFieldRoleMeta);
    }
    if (data.containsKey('selectable_keywords')) {
      context.handle(
          _selectableKeywordsMeta,
          selectableKeywords.isAcceptableOrUnknown(
              data['selectable_keywords'], _selectableKeywordsMeta));
    } else if (isInserting) {
      context.missing(_selectableKeywordsMeta);
    }
    if (data.containsKey('unit_type')) {
      context.handle(_unitTypeMeta,
          unitType.isAcceptableOrUnknown(data['unit_type'], _unitTypeMeta));
    } else if (isInserting) {
      context.missing(_unitTypeMeta);
    }
    if (data.containsKey('enemy_units_destroyed')) {
      context.handle(
          _enemyUnitsDestroyedMeta,
          enemyUnitsDestroyed.isAcceptableOrUnknown(
              data['enemy_units_destroyed'], _enemyUnitsDestroyedMeta));
    } else if (isInserting) {
      context.missing(_enemyUnitsDestroyedMeta);
    }
    if (data.containsKey('enemy_units_destroyed_with_psychic_powers')) {
      context.handle(
          _enemyUnitsDestroyedWithPsychicPowersMeta,
          enemyUnitsDestroyedWithPsychicPowers.isAcceptableOrUnknown(
              data['enemy_units_destroyed_with_psychic_powers'],
              _enemyUnitsDestroyedWithPsychicPowersMeta));
    } else if (isInserting) {
      context.missing(_enemyUnitsDestroyedWithPsychicPowersMeta);
    }
    if (data.containsKey('enemy_units_destroyed_with_ranged_weapons')) {
      context.handle(
          _enemyUnitsDestroyedWithRangedWeaponsMeta,
          enemyUnitsDestroyedWithRangedWeapons.isAcceptableOrUnknown(
              data['enemy_units_destroyed_with_ranged_weapons'],
              _enemyUnitsDestroyedWithRangedWeaponsMeta));
    } else if (isInserting) {
      context.missing(_enemyUnitsDestroyedWithRangedWeaponsMeta);
    }
    if (data.containsKey('enemy_units_destroyed_with_melee_weapons')) {
      context.handle(
          _enemyUnitsDestroyedWithMeleeWeaponsMeta,
          enemyUnitsDestroyedWithMeleeWeapons.isAcceptableOrUnknown(
              data['enemy_units_destroyed_with_melee_weapons'],
              _enemyUnitsDestroyedWithMeleeWeaponsMeta));
    } else if (isInserting) {
      context.missing(_enemyUnitsDestroyedWithMeleeWeaponsMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CrusadeCardEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CrusadeCardEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CrusadeCardEntitiesTable createAlias(String alias) {
    return $CrusadeCardEntitiesTable(_db, alias);
  }
}

class CrusadeForceEntity extends DataClass
    implements Insertable<CrusadeForceEntity> {
  final int id;
  final String crusadeFactionKeyword;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  CrusadeForceEntity(
      {@required this.id,
      @required this.crusadeFactionKeyword,
      this.description,
      @required this.createdAt,
      @required this.updatedAt});
  factory CrusadeForceEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return CrusadeForceEntity(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      crusadeFactionKeyword: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}crusade_faction_keyword']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || crusadeFactionKeyword != null) {
      map['crusade_faction_keyword'] = Variable<String>(crusadeFactionKeyword);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  CrusadeForceEntitiesCompanion toCompanion(bool nullToAbsent) {
    return CrusadeForceEntitiesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      crusadeFactionKeyword: crusadeFactionKeyword == null && nullToAbsent
          ? const Value.absent()
          : Value(crusadeFactionKeyword),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory CrusadeForceEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CrusadeForceEntity(
      id: serializer.fromJson<int>(json['id']),
      crusadeFactionKeyword:
          serializer.fromJson<String>(json['crusadeFactionKeyword']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'crusadeFactionKeyword': serializer.toJson<String>(crusadeFactionKeyword),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  CrusadeForceEntity copyWith(
          {int id,
          String crusadeFactionKeyword,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      CrusadeForceEntity(
        id: id ?? this.id,
        crusadeFactionKeyword:
            crusadeFactionKeyword ?? this.crusadeFactionKeyword,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('CrusadeForceEntity(')
          ..write('id: $id, ')
          ..write('crusadeFactionKeyword: $crusadeFactionKeyword, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          crusadeFactionKeyword.hashCode,
          $mrjc(description.hashCode,
              $mrjc(createdAt.hashCode, updatedAt.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CrusadeForceEntity &&
          other.id == this.id &&
          other.crusadeFactionKeyword == this.crusadeFactionKeyword &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CrusadeForceEntitiesCompanion
    extends UpdateCompanion<CrusadeForceEntity> {
  final Value<int> id;
  final Value<String> crusadeFactionKeyword;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const CrusadeForceEntitiesCompanion({
    this.id = const Value.absent(),
    this.crusadeFactionKeyword = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CrusadeForceEntitiesCompanion.insert({
    this.id = const Value.absent(),
    @required String crusadeFactionKeyword,
    this.description = const Value.absent(),
    @required DateTime createdAt,
    @required DateTime updatedAt,
  })  : crusadeFactionKeyword = Value(crusadeFactionKeyword),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<CrusadeForceEntity> custom({
    Expression<int> id,
    Expression<String> crusadeFactionKeyword,
    Expression<String> description,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (crusadeFactionKeyword != null)
        'crusade_faction_keyword': crusadeFactionKeyword,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CrusadeForceEntitiesCompanion copyWith(
      {Value<int> id,
      Value<String> crusadeFactionKeyword,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return CrusadeForceEntitiesCompanion(
      id: id ?? this.id,
      crusadeFactionKeyword:
          crusadeFactionKeyword ?? this.crusadeFactionKeyword,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (crusadeFactionKeyword.present) {
      map['crusade_faction_keyword'] =
          Variable<String>(crusadeFactionKeyword.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CrusadeForceEntitiesCompanion(')
          ..write('id: $id, ')
          ..write('crusadeFactionKeyword: $crusadeFactionKeyword, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CrusadeForceEntitiesTable extends CrusadeForceEntities
    with TableInfo<$CrusadeForceEntitiesTable, CrusadeForceEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $CrusadeForceEntitiesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _crusadeFactionKeywordMeta =
      const VerificationMeta('crusadeFactionKeyword');
  GeneratedTextColumn _crusadeFactionKeyword;
  @override
  GeneratedTextColumn get crusadeFactionKeyword =>
      _crusadeFactionKeyword ??= _constructCrusadeFactionKeyword();
  GeneratedTextColumn _constructCrusadeFactionKeyword() {
    return GeneratedTextColumn('crusade_faction_keyword', $tableName, false,
        minTextLength: 3, maxTextLength: 25);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, crusadeFactionKeyword, description, createdAt, updatedAt];
  @override
  $CrusadeForceEntitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'crusade_force_entities';
  @override
  final String actualTableName = 'crusade_force_entities';
  @override
  VerificationContext validateIntegrity(Insertable<CrusadeForceEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('crusade_faction_keyword')) {
      context.handle(
          _crusadeFactionKeywordMeta,
          crusadeFactionKeyword.isAcceptableOrUnknown(
              data['crusade_faction_keyword'], _crusadeFactionKeywordMeta));
    } else if (isInserting) {
      context.missing(_crusadeFactionKeywordMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CrusadeForceEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CrusadeForceEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CrusadeForceEntitiesTable createAlias(String alias) {
    return $CrusadeForceEntitiesTable(_db, alias);
  }
}

class NoteEntity extends DataClass implements Insertable<NoteEntity> {
  final int id;
  final int crusadeCardId;
  final int orderOfBattleId;
  final String label;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  NoteEntity(
      {@required this.id,
      this.crusadeCardId,
      this.orderOfBattleId,
      @required this.label,
      @required this.description,
      @required this.createdAt,
      @required this.updatedAt});
  factory NoteEntity.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return NoteEntity(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      crusadeCardId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}crusade_card_id']),
      orderOfBattleId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}order_of_battle_id']),
      label:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}label']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || crusadeCardId != null) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId);
    }
    if (!nullToAbsent || orderOfBattleId != null) {
      map['order_of_battle_id'] = Variable<int>(orderOfBattleId);
    }
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  NoteEntitiesCompanion toCompanion(bool nullToAbsent) {
    return NoteEntitiesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      crusadeCardId: crusadeCardId == null && nullToAbsent
          ? const Value.absent()
          : Value(crusadeCardId),
      orderOfBattleId: orderOfBattleId == null && nullToAbsent
          ? const Value.absent()
          : Value(orderOfBattleId),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory NoteEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return NoteEntity(
      id: serializer.fromJson<int>(json['id']),
      crusadeCardId: serializer.fromJson<int>(json['crusadeCardId']),
      orderOfBattleId: serializer.fromJson<int>(json['orderOfBattleId']),
      label: serializer.fromJson<String>(json['label']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'crusadeCardId': serializer.toJson<int>(crusadeCardId),
      'orderOfBattleId': serializer.toJson<int>(orderOfBattleId),
      'label': serializer.toJson<String>(label),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  NoteEntity copyWith(
          {int id,
          int crusadeCardId,
          int orderOfBattleId,
          String label,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      NoteEntity(
        id: id ?? this.id,
        crusadeCardId: crusadeCardId ?? this.crusadeCardId,
        orderOfBattleId: orderOfBattleId ?? this.orderOfBattleId,
        label: label ?? this.label,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('NoteEntity(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('orderOfBattleId: $orderOfBattleId, ')
          ..write('label: $label, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          crusadeCardId.hashCode,
          $mrjc(
              orderOfBattleId.hashCode,
              $mrjc(
                  label.hashCode,
                  $mrjc(description.hashCode,
                      $mrjc(createdAt.hashCode, updatedAt.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is NoteEntity &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.orderOfBattleId == this.orderOfBattleId &&
          other.label == this.label &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class NoteEntitiesCompanion extends UpdateCompanion<NoteEntity> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<int> orderOfBattleId;
  final Value<String> label;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const NoteEntitiesCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.orderOfBattleId = const Value.absent(),
    this.label = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  NoteEntitiesCompanion.insert({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.orderOfBattleId = const Value.absent(),
    @required String label,
    @required String description,
    @required DateTime createdAt,
    @required DateTime updatedAt,
  })  : label = Value(label),
        description = Value(description),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<NoteEntity> custom({
    Expression<int> id,
    Expression<int> crusadeCardId,
    Expression<int> orderOfBattleId,
    Expression<String> label,
    Expression<String> description,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (crusadeCardId != null) 'crusade_card_id': crusadeCardId,
      if (orderOfBattleId != null) 'order_of_battle_id': orderOfBattleId,
      if (label != null) 'label': label,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  NoteEntitiesCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<int> orderOfBattleId,
      Value<String> label,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return NoteEntitiesCompanion(
      id: id ?? this.id,
      crusadeCardId: crusadeCardId ?? this.crusadeCardId,
      orderOfBattleId: orderOfBattleId ?? this.orderOfBattleId,
      label: label ?? this.label,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (crusadeCardId.present) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId.value);
    }
    if (orderOfBattleId.present) {
      map['order_of_battle_id'] = Variable<int>(orderOfBattleId.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NoteEntitiesCompanion(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('orderOfBattleId: $orderOfBattleId, ')
          ..write('label: $label, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $NoteEntitiesTable extends NoteEntities
    with TableInfo<$NoteEntitiesTable, NoteEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $NoteEntitiesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _crusadeCardIdMeta =
      const VerificationMeta('crusadeCardId');
  GeneratedIntColumn _crusadeCardId;
  @override
  GeneratedIntColumn get crusadeCardId =>
      _crusadeCardId ??= _constructCrusadeCardId();
  GeneratedIntColumn _constructCrusadeCardId() {
    return GeneratedIntColumn(
      'crusade_card_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _orderOfBattleIdMeta =
      const VerificationMeta('orderOfBattleId');
  GeneratedIntColumn _orderOfBattleId;
  @override
  GeneratedIntColumn get orderOfBattleId =>
      _orderOfBattleId ??= _constructOrderOfBattleId();
  GeneratedIntColumn _constructOrderOfBattleId() {
    return GeneratedIntColumn(
      'order_of_battle_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _labelMeta = const VerificationMeta('label');
  GeneratedTextColumn _label;
  @override
  GeneratedTextColumn get label => _label ??= _constructLabel();
  GeneratedTextColumn _constructLabel() {
    return GeneratedTextColumn('label', $tableName, false,
        minTextLength: 0, maxTextLength: 100);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        crusadeCardId,
        orderOfBattleId,
        label,
        description,
        createdAt,
        updatedAt
      ];
  @override
  $NoteEntitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'note_entities';
  @override
  final String actualTableName = 'note_entities';
  @override
  VerificationContext validateIntegrity(Insertable<NoteEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('crusade_card_id')) {
      context.handle(
          _crusadeCardIdMeta,
          crusadeCardId.isAcceptableOrUnknown(
              data['crusade_card_id'], _crusadeCardIdMeta));
    }
    if (data.containsKey('order_of_battle_id')) {
      context.handle(
          _orderOfBattleIdMeta,
          orderOfBattleId.isAcceptableOrUnknown(
              data['order_of_battle_id'], _orderOfBattleIdMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label'], _labelMeta));
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NoteEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return NoteEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $NoteEntitiesTable createAlias(String alias) {
    return $NoteEntitiesTable(_db, alias);
  }
}

class OrderOfBattleEntity extends DataClass
    implements Insertable<OrderOfBattleEntity> {
  final int id;
  final int crusadeForceId;
  final int supplyLimit;
  final int battleTally;
  final int requisitionPoints;
  final int battlesWon;
  final int battlesLost;
  final DateTime createdAt;
  final DateTime updatedAt;
  OrderOfBattleEntity(
      {@required this.id,
      @required this.crusadeForceId,
      @required this.supplyLimit,
      @required this.battleTally,
      @required this.requisitionPoints,
      @required this.battlesWon,
      @required this.battlesLost,
      @required this.createdAt,
      @required this.updatedAt});
  factory OrderOfBattleEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return OrderOfBattleEntity(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      crusadeForceId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}crusade_force_id']),
      supplyLimit: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}supply_limit']),
      battleTally: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}battle_tally']),
      requisitionPoints: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}requisition_points']),
      battlesWon: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}battles_won']),
      battlesLost: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}battles_lost']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || crusadeForceId != null) {
      map['crusade_force_id'] = Variable<int>(crusadeForceId);
    }
    if (!nullToAbsent || supplyLimit != null) {
      map['supply_limit'] = Variable<int>(supplyLimit);
    }
    if (!nullToAbsent || battleTally != null) {
      map['battle_tally'] = Variable<int>(battleTally);
    }
    if (!nullToAbsent || requisitionPoints != null) {
      map['requisition_points'] = Variable<int>(requisitionPoints);
    }
    if (!nullToAbsent || battlesWon != null) {
      map['battles_won'] = Variable<int>(battlesWon);
    }
    if (!nullToAbsent || battlesLost != null) {
      map['battles_lost'] = Variable<int>(battlesLost);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  OrderOfBattleEntitiesCompanion toCompanion(bool nullToAbsent) {
    return OrderOfBattleEntitiesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      crusadeForceId: crusadeForceId == null && nullToAbsent
          ? const Value.absent()
          : Value(crusadeForceId),
      supplyLimit: supplyLimit == null && nullToAbsent
          ? const Value.absent()
          : Value(supplyLimit),
      battleTally: battleTally == null && nullToAbsent
          ? const Value.absent()
          : Value(battleTally),
      requisitionPoints: requisitionPoints == null && nullToAbsent
          ? const Value.absent()
          : Value(requisitionPoints),
      battlesWon: battlesWon == null && nullToAbsent
          ? const Value.absent()
          : Value(battlesWon),
      battlesLost: battlesLost == null && nullToAbsent
          ? const Value.absent()
          : Value(battlesLost),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory OrderOfBattleEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return OrderOfBattleEntity(
      id: serializer.fromJson<int>(json['id']),
      crusadeForceId: serializer.fromJson<int>(json['crusadeForceId']),
      supplyLimit: serializer.fromJson<int>(json['supplyLimit']),
      battleTally: serializer.fromJson<int>(json['battleTally']),
      requisitionPoints: serializer.fromJson<int>(json['requisitionPoints']),
      battlesWon: serializer.fromJson<int>(json['battlesWon']),
      battlesLost: serializer.fromJson<int>(json['battlesLost']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'crusadeForceId': serializer.toJson<int>(crusadeForceId),
      'supplyLimit': serializer.toJson<int>(supplyLimit),
      'battleTally': serializer.toJson<int>(battleTally),
      'requisitionPoints': serializer.toJson<int>(requisitionPoints),
      'battlesWon': serializer.toJson<int>(battlesWon),
      'battlesLost': serializer.toJson<int>(battlesLost),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  OrderOfBattleEntity copyWith(
          {int id,
          int crusadeForceId,
          int supplyLimit,
          int battleTally,
          int requisitionPoints,
          int battlesWon,
          int battlesLost,
          DateTime createdAt,
          DateTime updatedAt}) =>
      OrderOfBattleEntity(
        id: id ?? this.id,
        crusadeForceId: crusadeForceId ?? this.crusadeForceId,
        supplyLimit: supplyLimit ?? this.supplyLimit,
        battleTally: battleTally ?? this.battleTally,
        requisitionPoints: requisitionPoints ?? this.requisitionPoints,
        battlesWon: battlesWon ?? this.battlesWon,
        battlesLost: battlesLost ?? this.battlesLost,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('OrderOfBattleEntity(')
          ..write('id: $id, ')
          ..write('crusadeForceId: $crusadeForceId, ')
          ..write('supplyLimit: $supplyLimit, ')
          ..write('battleTally: $battleTally, ')
          ..write('requisitionPoints: $requisitionPoints, ')
          ..write('battlesWon: $battlesWon, ')
          ..write('battlesLost: $battlesLost, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          crusadeForceId.hashCode,
          $mrjc(
              supplyLimit.hashCode,
              $mrjc(
                  battleTally.hashCode,
                  $mrjc(
                      requisitionPoints.hashCode,
                      $mrjc(
                          battlesWon.hashCode,
                          $mrjc(
                              battlesLost.hashCode,
                              $mrjc(createdAt.hashCode,
                                  updatedAt.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is OrderOfBattleEntity &&
          other.id == this.id &&
          other.crusadeForceId == this.crusadeForceId &&
          other.supplyLimit == this.supplyLimit &&
          other.battleTally == this.battleTally &&
          other.requisitionPoints == this.requisitionPoints &&
          other.battlesWon == this.battlesWon &&
          other.battlesLost == this.battlesLost &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class OrderOfBattleEntitiesCompanion
    extends UpdateCompanion<OrderOfBattleEntity> {
  final Value<int> id;
  final Value<int> crusadeForceId;
  final Value<int> supplyLimit;
  final Value<int> battleTally;
  final Value<int> requisitionPoints;
  final Value<int> battlesWon;
  final Value<int> battlesLost;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const OrderOfBattleEntitiesCompanion({
    this.id = const Value.absent(),
    this.crusadeForceId = const Value.absent(),
    this.supplyLimit = const Value.absent(),
    this.battleTally = const Value.absent(),
    this.requisitionPoints = const Value.absent(),
    this.battlesWon = const Value.absent(),
    this.battlesLost = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  OrderOfBattleEntitiesCompanion.insert({
    this.id = const Value.absent(),
    @required int crusadeForceId,
    @required int supplyLimit,
    @required int battleTally,
    @required int requisitionPoints,
    @required int battlesWon,
    @required int battlesLost,
    @required DateTime createdAt,
    @required DateTime updatedAt,
  })  : crusadeForceId = Value(crusadeForceId),
        supplyLimit = Value(supplyLimit),
        battleTally = Value(battleTally),
        requisitionPoints = Value(requisitionPoints),
        battlesWon = Value(battlesWon),
        battlesLost = Value(battlesLost),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<OrderOfBattleEntity> custom({
    Expression<int> id,
    Expression<int> crusadeForceId,
    Expression<int> supplyLimit,
    Expression<int> battleTally,
    Expression<int> requisitionPoints,
    Expression<int> battlesWon,
    Expression<int> battlesLost,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (crusadeForceId != null) 'crusade_force_id': crusadeForceId,
      if (supplyLimit != null) 'supply_limit': supplyLimit,
      if (battleTally != null) 'battle_tally': battleTally,
      if (requisitionPoints != null) 'requisition_points': requisitionPoints,
      if (battlesWon != null) 'battles_won': battlesWon,
      if (battlesLost != null) 'battles_lost': battlesLost,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  OrderOfBattleEntitiesCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeForceId,
      Value<int> supplyLimit,
      Value<int> battleTally,
      Value<int> requisitionPoints,
      Value<int> battlesWon,
      Value<int> battlesLost,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return OrderOfBattleEntitiesCompanion(
      id: id ?? this.id,
      crusadeForceId: crusadeForceId ?? this.crusadeForceId,
      supplyLimit: supplyLimit ?? this.supplyLimit,
      battleTally: battleTally ?? this.battleTally,
      requisitionPoints: requisitionPoints ?? this.requisitionPoints,
      battlesWon: battlesWon ?? this.battlesWon,
      battlesLost: battlesLost ?? this.battlesLost,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (crusadeForceId.present) {
      map['crusade_force_id'] = Variable<int>(crusadeForceId.value);
    }
    if (supplyLimit.present) {
      map['supply_limit'] = Variable<int>(supplyLimit.value);
    }
    if (battleTally.present) {
      map['battle_tally'] = Variable<int>(battleTally.value);
    }
    if (requisitionPoints.present) {
      map['requisition_points'] = Variable<int>(requisitionPoints.value);
    }
    if (battlesWon.present) {
      map['battles_won'] = Variable<int>(battlesWon.value);
    }
    if (battlesLost.present) {
      map['battles_lost'] = Variable<int>(battlesLost.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderOfBattleEntitiesCompanion(')
          ..write('id: $id, ')
          ..write('crusadeForceId: $crusadeForceId, ')
          ..write('supplyLimit: $supplyLimit, ')
          ..write('battleTally: $battleTally, ')
          ..write('requisitionPoints: $requisitionPoints, ')
          ..write('battlesWon: $battlesWon, ')
          ..write('battlesLost: $battlesLost, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $OrderOfBattleEntitiesTable extends OrderOfBattleEntities
    with TableInfo<$OrderOfBattleEntitiesTable, OrderOfBattleEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $OrderOfBattleEntitiesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _crusadeForceIdMeta =
      const VerificationMeta('crusadeForceId');
  GeneratedIntColumn _crusadeForceId;
  @override
  GeneratedIntColumn get crusadeForceId =>
      _crusadeForceId ??= _constructCrusadeForceId();
  GeneratedIntColumn _constructCrusadeForceId() {
    return GeneratedIntColumn(
      'crusade_force_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _supplyLimitMeta =
      const VerificationMeta('supplyLimit');
  GeneratedIntColumn _supplyLimit;
  @override
  GeneratedIntColumn get supplyLimit =>
      _supplyLimit ??= _constructSupplyLimit();
  GeneratedIntColumn _constructSupplyLimit() {
    return GeneratedIntColumn(
      'supply_limit',
      $tableName,
      false,
    );
  }

  final VerificationMeta _battleTallyMeta =
      const VerificationMeta('battleTally');
  GeneratedIntColumn _battleTally;
  @override
  GeneratedIntColumn get battleTally =>
      _battleTally ??= _constructBattleTally();
  GeneratedIntColumn _constructBattleTally() {
    return GeneratedIntColumn(
      'battle_tally',
      $tableName,
      false,
    );
  }

  final VerificationMeta _requisitionPointsMeta =
      const VerificationMeta('requisitionPoints');
  GeneratedIntColumn _requisitionPoints;
  @override
  GeneratedIntColumn get requisitionPoints =>
      _requisitionPoints ??= _constructRequisitionPoints();
  GeneratedIntColumn _constructRequisitionPoints() {
    return GeneratedIntColumn(
      'requisition_points',
      $tableName,
      false,
    );
  }

  final VerificationMeta _battlesWonMeta = const VerificationMeta('battlesWon');
  GeneratedIntColumn _battlesWon;
  @override
  GeneratedIntColumn get battlesWon => _battlesWon ??= _constructBattlesWon();
  GeneratedIntColumn _constructBattlesWon() {
    return GeneratedIntColumn(
      'battles_won',
      $tableName,
      false,
    );
  }

  final VerificationMeta _battlesLostMeta =
      const VerificationMeta('battlesLost');
  GeneratedIntColumn _battlesLost;
  @override
  GeneratedIntColumn get battlesLost =>
      _battlesLost ??= _constructBattlesLost();
  GeneratedIntColumn _constructBattlesLost() {
    return GeneratedIntColumn(
      'battles_lost',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        crusadeForceId,
        supplyLimit,
        battleTally,
        requisitionPoints,
        battlesWon,
        battlesLost,
        createdAt,
        updatedAt
      ];
  @override
  $OrderOfBattleEntitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'order_of_battle_entities';
  @override
  final String actualTableName = 'order_of_battle_entities';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderOfBattleEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('crusade_force_id')) {
      context.handle(
          _crusadeForceIdMeta,
          crusadeForceId.isAcceptableOrUnknown(
              data['crusade_force_id'], _crusadeForceIdMeta));
    } else if (isInserting) {
      context.missing(_crusadeForceIdMeta);
    }
    if (data.containsKey('supply_limit')) {
      context.handle(
          _supplyLimitMeta,
          supplyLimit.isAcceptableOrUnknown(
              data['supply_limit'], _supplyLimitMeta));
    } else if (isInserting) {
      context.missing(_supplyLimitMeta);
    }
    if (data.containsKey('battle_tally')) {
      context.handle(
          _battleTallyMeta,
          battleTally.isAcceptableOrUnknown(
              data['battle_tally'], _battleTallyMeta));
    } else if (isInserting) {
      context.missing(_battleTallyMeta);
    }
    if (data.containsKey('requisition_points')) {
      context.handle(
          _requisitionPointsMeta,
          requisitionPoints.isAcceptableOrUnknown(
              data['requisition_points'], _requisitionPointsMeta));
    } else if (isInserting) {
      context.missing(_requisitionPointsMeta);
    }
    if (data.containsKey('battles_won')) {
      context.handle(
          _battlesWonMeta,
          battlesWon.isAcceptableOrUnknown(
              data['battles_won'], _battlesWonMeta));
    } else if (isInserting) {
      context.missing(_battlesWonMeta);
    }
    if (data.containsKey('battles_lost')) {
      context.handle(
          _battlesLostMeta,
          battlesLost.isAcceptableOrUnknown(
              data['battles_lost'], _battlesLostMeta));
    } else if (isInserting) {
      context.missing(_battlesLostMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OrderOfBattleEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return OrderOfBattleEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $OrderOfBattleEntitiesTable createAlias(String alias) {
    return $OrderOfBattleEntitiesTable(_db, alias);
  }
}

class PsychicPowerEntity extends DataClass
    implements Insertable<PsychicPowerEntity> {
  final int id;
  final int crusadeCardId;
  final String name;
  final int warpCharge;
  final String description;
  final bool fromBattleHonor;
  final DateTime createdAt;
  final DateTime updatedAt;
  PsychicPowerEntity(
      {@required this.id,
      @required this.crusadeCardId,
      @required this.name,
      @required this.warpCharge,
      this.description,
      @required this.fromBattleHonor,
      @required this.createdAt,
      @required this.updatedAt});
  factory PsychicPowerEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return PsychicPowerEntity(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      crusadeCardId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}crusade_card_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      warpCharge: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}warp_charge']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      fromBattleHonor: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}from_battle_honor']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || crusadeCardId != null) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || warpCharge != null) {
      map['warp_charge'] = Variable<int>(warpCharge);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || fromBattleHonor != null) {
      map['from_battle_honor'] = Variable<bool>(fromBattleHonor);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  PsychicPowerEntitiesCompanion toCompanion(bool nullToAbsent) {
    return PsychicPowerEntitiesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      crusadeCardId: crusadeCardId == null && nullToAbsent
          ? const Value.absent()
          : Value(crusadeCardId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      warpCharge: warpCharge == null && nullToAbsent
          ? const Value.absent()
          : Value(warpCharge),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      fromBattleHonor: fromBattleHonor == null && nullToAbsent
          ? const Value.absent()
          : Value(fromBattleHonor),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory PsychicPowerEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PsychicPowerEntity(
      id: serializer.fromJson<int>(json['id']),
      crusadeCardId: serializer.fromJson<int>(json['crusadeCardId']),
      name: serializer.fromJson<String>(json['name']),
      warpCharge: serializer.fromJson<int>(json['warpCharge']),
      description: serializer.fromJson<String>(json['description']),
      fromBattleHonor: serializer.fromJson<bool>(json['fromBattleHonor']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'crusadeCardId': serializer.toJson<int>(crusadeCardId),
      'name': serializer.toJson<String>(name),
      'warpCharge': serializer.toJson<int>(warpCharge),
      'description': serializer.toJson<String>(description),
      'fromBattleHonor': serializer.toJson<bool>(fromBattleHonor),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  PsychicPowerEntity copyWith(
          {int id,
          int crusadeCardId,
          String name,
          int warpCharge,
          String description,
          bool fromBattleHonor,
          DateTime createdAt,
          DateTime updatedAt}) =>
      PsychicPowerEntity(
        id: id ?? this.id,
        crusadeCardId: crusadeCardId ?? this.crusadeCardId,
        name: name ?? this.name,
        warpCharge: warpCharge ?? this.warpCharge,
        description: description ?? this.description,
        fromBattleHonor: fromBattleHonor ?? this.fromBattleHonor,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('PsychicPowerEntity(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('name: $name, ')
          ..write('warpCharge: $warpCharge, ')
          ..write('description: $description, ')
          ..write('fromBattleHonor: $fromBattleHonor, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          crusadeCardId.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(
                  warpCharge.hashCode,
                  $mrjc(
                      description.hashCode,
                      $mrjc(fromBattleHonor.hashCode,
                          $mrjc(createdAt.hashCode, updatedAt.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PsychicPowerEntity &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.name == this.name &&
          other.warpCharge == this.warpCharge &&
          other.description == this.description &&
          other.fromBattleHonor == this.fromBattleHonor &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PsychicPowerEntitiesCompanion
    extends UpdateCompanion<PsychicPowerEntity> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<String> name;
  final Value<int> warpCharge;
  final Value<String> description;
  final Value<bool> fromBattleHonor;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const PsychicPowerEntitiesCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.name = const Value.absent(),
    this.warpCharge = const Value.absent(),
    this.description = const Value.absent(),
    this.fromBattleHonor = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  PsychicPowerEntitiesCompanion.insert({
    this.id = const Value.absent(),
    @required int crusadeCardId,
    @required String name,
    @required int warpCharge,
    this.description = const Value.absent(),
    this.fromBattleHonor = const Value.absent(),
    @required DateTime createdAt,
    @required DateTime updatedAt,
  })  : crusadeCardId = Value(crusadeCardId),
        name = Value(name),
        warpCharge = Value(warpCharge),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<PsychicPowerEntity> custom({
    Expression<int> id,
    Expression<int> crusadeCardId,
    Expression<String> name,
    Expression<int> warpCharge,
    Expression<String> description,
    Expression<bool> fromBattleHonor,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (crusadeCardId != null) 'crusade_card_id': crusadeCardId,
      if (name != null) 'name': name,
      if (warpCharge != null) 'warp_charge': warpCharge,
      if (description != null) 'description': description,
      if (fromBattleHonor != null) 'from_battle_honor': fromBattleHonor,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  PsychicPowerEntitiesCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<String> name,
      Value<int> warpCharge,
      Value<String> description,
      Value<bool> fromBattleHonor,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return PsychicPowerEntitiesCompanion(
      id: id ?? this.id,
      crusadeCardId: crusadeCardId ?? this.crusadeCardId,
      name: name ?? this.name,
      warpCharge: warpCharge ?? this.warpCharge,
      description: description ?? this.description,
      fromBattleHonor: fromBattleHonor ?? this.fromBattleHonor,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (crusadeCardId.present) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (warpCharge.present) {
      map['warp_charge'] = Variable<int>(warpCharge.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (fromBattleHonor.present) {
      map['from_battle_honor'] = Variable<bool>(fromBattleHonor.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PsychicPowerEntitiesCompanion(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('name: $name, ')
          ..write('warpCharge: $warpCharge, ')
          ..write('description: $description, ')
          ..write('fromBattleHonor: $fromBattleHonor, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $PsychicPowerEntitiesTable extends PsychicPowerEntities
    with TableInfo<$PsychicPowerEntitiesTable, PsychicPowerEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $PsychicPowerEntitiesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _crusadeCardIdMeta =
      const VerificationMeta('crusadeCardId');
  GeneratedIntColumn _crusadeCardId;
  @override
  GeneratedIntColumn get crusadeCardId =>
      _crusadeCardId ??= _constructCrusadeCardId();
  GeneratedIntColumn _constructCrusadeCardId() {
    return GeneratedIntColumn(
      'crusade_card_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  final VerificationMeta _warpChargeMeta = const VerificationMeta('warpCharge');
  GeneratedIntColumn _warpCharge;
  @override
  GeneratedIntColumn get warpCharge => _warpCharge ??= _constructWarpCharge();
  GeneratedIntColumn _constructWarpCharge() {
    return GeneratedIntColumn(
      'warp_charge',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fromBattleHonorMeta =
      const VerificationMeta('fromBattleHonor');
  GeneratedBoolColumn _fromBattleHonor;
  @override
  GeneratedBoolColumn get fromBattleHonor =>
      _fromBattleHonor ??= _constructFromBattleHonor();
  GeneratedBoolColumn _constructFromBattleHonor() {
    return GeneratedBoolColumn('from_battle_honor', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        crusadeCardId,
        name,
        warpCharge,
        description,
        fromBattleHonor,
        createdAt,
        updatedAt
      ];
  @override
  $PsychicPowerEntitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'psychic_power_entities';
  @override
  final String actualTableName = 'psychic_power_entities';
  @override
  VerificationContext validateIntegrity(Insertable<PsychicPowerEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('crusade_card_id')) {
      context.handle(
          _crusadeCardIdMeta,
          crusadeCardId.isAcceptableOrUnknown(
              data['crusade_card_id'], _crusadeCardIdMeta));
    } else if (isInserting) {
      context.missing(_crusadeCardIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('warp_charge')) {
      context.handle(
          _warpChargeMeta,
          warpCharge.isAcceptableOrUnknown(
              data['warp_charge'], _warpChargeMeta));
    } else if (isInserting) {
      context.missing(_warpChargeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('from_battle_honor')) {
      context.handle(
          _fromBattleHonorMeta,
          fromBattleHonor.isAcceptableOrUnknown(
              data['from_battle_honor'], _fromBattleHonorMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PsychicPowerEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PsychicPowerEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PsychicPowerEntitiesTable createAlias(String alias) {
    return $PsychicPowerEntitiesTable(_db, alias);
  }
}

class RelicEntity extends DataClass implements Insertable<RelicEntity> {
  final int id;
  final int crusadeCardId;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  RelicEntity(
      {@required this.id,
      @required this.crusadeCardId,
      @required this.name,
      this.description,
      @required this.createdAt,
      @required this.updatedAt});
  factory RelicEntity.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return RelicEntity(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      crusadeCardId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}crusade_card_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || crusadeCardId != null) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  RelicEntitiesCompanion toCompanion(bool nullToAbsent) {
    return RelicEntitiesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      crusadeCardId: crusadeCardId == null && nullToAbsent
          ? const Value.absent()
          : Value(crusadeCardId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory RelicEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return RelicEntity(
      id: serializer.fromJson<int>(json['id']),
      crusadeCardId: serializer.fromJson<int>(json['crusadeCardId']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'crusadeCardId': serializer.toJson<int>(crusadeCardId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  RelicEntity copyWith(
          {int id,
          int crusadeCardId,
          String name,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      RelicEntity(
        id: id ?? this.id,
        crusadeCardId: crusadeCardId ?? this.crusadeCardId,
        name: name ?? this.name,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('RelicEntity(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          crusadeCardId.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(description.hashCode,
                  $mrjc(createdAt.hashCode, updatedAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is RelicEntity &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class RelicEntitiesCompanion extends UpdateCompanion<RelicEntity> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const RelicEntitiesCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  RelicEntitiesCompanion.insert({
    this.id = const Value.absent(),
    @required int crusadeCardId,
    @required String name,
    this.description = const Value.absent(),
    @required DateTime createdAt,
    @required DateTime updatedAt,
  })  : crusadeCardId = Value(crusadeCardId),
        name = Value(name),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<RelicEntity> custom({
    Expression<int> id,
    Expression<int> crusadeCardId,
    Expression<String> name,
    Expression<String> description,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (crusadeCardId != null) 'crusade_card_id': crusadeCardId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  RelicEntitiesCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<String> name,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return RelicEntitiesCompanion(
      id: id ?? this.id,
      crusadeCardId: crusadeCardId ?? this.crusadeCardId,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (crusadeCardId.present) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RelicEntitiesCompanion(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $RelicEntitiesTable extends RelicEntities
    with TableInfo<$RelicEntitiesTable, RelicEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $RelicEntitiesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _crusadeCardIdMeta =
      const VerificationMeta('crusadeCardId');
  GeneratedIntColumn _crusadeCardId;
  @override
  GeneratedIntColumn get crusadeCardId =>
      _crusadeCardId ??= _constructCrusadeCardId();
  GeneratedIntColumn _constructCrusadeCardId() {
    return GeneratedIntColumn(
      'crusade_card_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, crusadeCardId, name, description, createdAt, updatedAt];
  @override
  $RelicEntitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'relic_entities';
  @override
  final String actualTableName = 'relic_entities';
  @override
  VerificationContext validateIntegrity(Insertable<RelicEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('crusade_card_id')) {
      context.handle(
          _crusadeCardIdMeta,
          crusadeCardId.isAcceptableOrUnknown(
              data['crusade_card_id'], _crusadeCardIdMeta));
    } else if (isInserting) {
      context.missing(_crusadeCardIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RelicEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return RelicEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $RelicEntitiesTable createAlias(String alias) {
    return $RelicEntitiesTable(_db, alias);
  }
}

class UnitModelEntity extends DataClass implements Insertable<UnitModelEntity> {
  final int id;
  final int crusadeCardId;
  final String name;
  final String wargear;
  final DateTime createdAt;
  final DateTime updatedAt;
  UnitModelEntity(
      {@required this.id,
      @required this.crusadeCardId,
      @required this.name,
      @required this.wargear,
      @required this.createdAt,
      @required this.updatedAt});
  factory UnitModelEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return UnitModelEntity(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      crusadeCardId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}crusade_card_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      wargear:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}wargear']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || crusadeCardId != null) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || wargear != null) {
      map['wargear'] = Variable<String>(wargear);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  UnitModelEntitiesCompanion toCompanion(bool nullToAbsent) {
    return UnitModelEntitiesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      crusadeCardId: crusadeCardId == null && nullToAbsent
          ? const Value.absent()
          : Value(crusadeCardId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      wargear: wargear == null && nullToAbsent
          ? const Value.absent()
          : Value(wargear),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory UnitModelEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UnitModelEntity(
      id: serializer.fromJson<int>(json['id']),
      crusadeCardId: serializer.fromJson<int>(json['crusadeCardId']),
      name: serializer.fromJson<String>(json['name']),
      wargear: serializer.fromJson<String>(json['wargear']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'crusadeCardId': serializer.toJson<int>(crusadeCardId),
      'name': serializer.toJson<String>(name),
      'wargear': serializer.toJson<String>(wargear),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  UnitModelEntity copyWith(
          {int id,
          int crusadeCardId,
          String name,
          String wargear,
          DateTime createdAt,
          DateTime updatedAt}) =>
      UnitModelEntity(
        id: id ?? this.id,
        crusadeCardId: crusadeCardId ?? this.crusadeCardId,
        name: name ?? this.name,
        wargear: wargear ?? this.wargear,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('UnitModelEntity(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('name: $name, ')
          ..write('wargear: $wargear, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          crusadeCardId.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(wargear.hashCode,
                  $mrjc(createdAt.hashCode, updatedAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is UnitModelEntity &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.name == this.name &&
          other.wargear == this.wargear &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class UnitModelEntitiesCompanion extends UpdateCompanion<UnitModelEntity> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<String> name;
  final Value<String> wargear;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const UnitModelEntitiesCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.name = const Value.absent(),
    this.wargear = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  UnitModelEntitiesCompanion.insert({
    this.id = const Value.absent(),
    @required int crusadeCardId,
    @required String name,
    @required String wargear,
    @required DateTime createdAt,
    @required DateTime updatedAt,
  })  : crusadeCardId = Value(crusadeCardId),
        name = Value(name),
        wargear = Value(wargear),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<UnitModelEntity> custom({
    Expression<int> id,
    Expression<int> crusadeCardId,
    Expression<String> name,
    Expression<String> wargear,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (crusadeCardId != null) 'crusade_card_id': crusadeCardId,
      if (name != null) 'name': name,
      if (wargear != null) 'wargear': wargear,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  UnitModelEntitiesCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<String> name,
      Value<String> wargear,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return UnitModelEntitiesCompanion(
      id: id ?? this.id,
      crusadeCardId: crusadeCardId ?? this.crusadeCardId,
      name: name ?? this.name,
      wargear: wargear ?? this.wargear,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (crusadeCardId.present) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (wargear.present) {
      map['wargear'] = Variable<String>(wargear.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UnitModelEntitiesCompanion(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('name: $name, ')
          ..write('wargear: $wargear, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $UnitModelEntitiesTable extends UnitModelEntities
    with TableInfo<$UnitModelEntitiesTable, UnitModelEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $UnitModelEntitiesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _crusadeCardIdMeta =
      const VerificationMeta('crusadeCardId');
  GeneratedIntColumn _crusadeCardId;
  @override
  GeneratedIntColumn get crusadeCardId =>
      _crusadeCardId ??= _constructCrusadeCardId();
  GeneratedIntColumn _constructCrusadeCardId() {
    return GeneratedIntColumn(
      'crusade_card_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  final VerificationMeta _wargearMeta = const VerificationMeta('wargear');
  GeneratedTextColumn _wargear;
  @override
  GeneratedTextColumn get wargear => _wargear ??= _constructWargear();
  GeneratedTextColumn _constructWargear() {
    return GeneratedTextColumn('wargear', $tableName, false,
        minTextLength: 1, maxTextLength: 250);
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, crusadeCardId, name, wargear, createdAt, updatedAt];
  @override
  $UnitModelEntitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'unit_model_entities';
  @override
  final String actualTableName = 'unit_model_entities';
  @override
  VerificationContext validateIntegrity(Insertable<UnitModelEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('crusade_card_id')) {
      context.handle(
          _crusadeCardIdMeta,
          crusadeCardId.isAcceptableOrUnknown(
              data['crusade_card_id'], _crusadeCardIdMeta));
    } else if (isInserting) {
      context.missing(_crusadeCardIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('wargear')) {
      context.handle(_wargearMeta,
          wargear.isAcceptableOrUnknown(data['wargear'], _wargearMeta));
    } else if (isInserting) {
      context.missing(_wargearMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UnitModelEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UnitModelEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UnitModelEntitiesTable createAlias(String alias) {
    return $UnitModelEntitiesTable(_db, alias);
  }
}

class WarlordTraitEntity extends DataClass
    implements Insertable<WarlordTraitEntity> {
  final int id;
  final int crusadeCardId;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  WarlordTraitEntity(
      {@required this.id,
      @required this.crusadeCardId,
      @required this.name,
      this.description,
      @required this.createdAt,
      @required this.updatedAt});
  factory WarlordTraitEntity.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return WarlordTraitEntity(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      crusadeCardId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}crusade_card_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || crusadeCardId != null) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  WarlordTraitEntitiesCompanion toCompanion(bool nullToAbsent) {
    return WarlordTraitEntitiesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      crusadeCardId: crusadeCardId == null && nullToAbsent
          ? const Value.absent()
          : Value(crusadeCardId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory WarlordTraitEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return WarlordTraitEntity(
      id: serializer.fromJson<int>(json['id']),
      crusadeCardId: serializer.fromJson<int>(json['crusadeCardId']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'crusadeCardId': serializer.toJson<int>(crusadeCardId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  WarlordTraitEntity copyWith(
          {int id,
          int crusadeCardId,
          String name,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      WarlordTraitEntity(
        id: id ?? this.id,
        crusadeCardId: crusadeCardId ?? this.crusadeCardId,
        name: name ?? this.name,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('WarlordTraitEntity(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          crusadeCardId.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(description.hashCode,
                  $mrjc(createdAt.hashCode, updatedAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is WarlordTraitEntity &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class WarlordTraitEntitiesCompanion
    extends UpdateCompanion<WarlordTraitEntity> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const WarlordTraitEntitiesCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  WarlordTraitEntitiesCompanion.insert({
    this.id = const Value.absent(),
    @required int crusadeCardId,
    @required String name,
    this.description = const Value.absent(),
    @required DateTime createdAt,
    @required DateTime updatedAt,
  })  : crusadeCardId = Value(crusadeCardId),
        name = Value(name),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<WarlordTraitEntity> custom({
    Expression<int> id,
    Expression<int> crusadeCardId,
    Expression<String> name,
    Expression<String> description,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (crusadeCardId != null) 'crusade_card_id': crusadeCardId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  WarlordTraitEntitiesCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<String> name,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return WarlordTraitEntitiesCompanion(
      id: id ?? this.id,
      crusadeCardId: crusadeCardId ?? this.crusadeCardId,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (crusadeCardId.present) {
      map['crusade_card_id'] = Variable<int>(crusadeCardId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WarlordTraitEntitiesCompanion(')
          ..write('id: $id, ')
          ..write('crusadeCardId: $crusadeCardId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $WarlordTraitEntitiesTable extends WarlordTraitEntities
    with TableInfo<$WarlordTraitEntitiesTable, WarlordTraitEntity> {
  final GeneratedDatabase _db;
  final String _alias;
  $WarlordTraitEntitiesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _crusadeCardIdMeta =
      const VerificationMeta('crusadeCardId');
  GeneratedIntColumn _crusadeCardId;
  @override
  GeneratedIntColumn get crusadeCardId =>
      _crusadeCardId ??= _constructCrusadeCardId();
  GeneratedIntColumn _constructCrusadeCardId() {
    return GeneratedIntColumn(
      'crusade_card_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, crusadeCardId, name, description, createdAt, updatedAt];
  @override
  $WarlordTraitEntitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'warlord_trait_entities';
  @override
  final String actualTableName = 'warlord_trait_entities';
  @override
  VerificationContext validateIntegrity(Insertable<WarlordTraitEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('crusade_card_id')) {
      context.handle(
          _crusadeCardIdMeta,
          crusadeCardId.isAcceptableOrUnknown(
              data['crusade_card_id'], _crusadeCardIdMeta));
    } else if (isInserting) {
      context.missing(_crusadeCardIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WarlordTraitEntity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return WarlordTraitEntity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $WarlordTraitEntitiesTable createAlias(String alias) {
    return $WarlordTraitEntitiesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $BattleHonorEntitiesTable _battleHonorEntities;
  $BattleHonorEntitiesTable get battleHonorEntities =>
      _battleHonorEntities ??= $BattleHonorEntitiesTable(this);
  $BattleScarEntitiesTable _battleScarEntities;
  $BattleScarEntitiesTable get battleScarEntities =>
      _battleScarEntities ??= $BattleScarEntitiesTable(this);
  $CrusadeCardEntitiesTable _crusadeCardEntities;
  $CrusadeCardEntitiesTable get crusadeCardEntities =>
      _crusadeCardEntities ??= $CrusadeCardEntitiesTable(this);
  $CrusadeForceEntitiesTable _crusadeForceEntities;
  $CrusadeForceEntitiesTable get crusadeForceEntities =>
      _crusadeForceEntities ??= $CrusadeForceEntitiesTable(this);
  $NoteEntitiesTable _noteEntities;
  $NoteEntitiesTable get noteEntities =>
      _noteEntities ??= $NoteEntitiesTable(this);
  $OrderOfBattleEntitiesTable _orderOfBattleEntities;
  $OrderOfBattleEntitiesTable get orderOfBattleEntities =>
      _orderOfBattleEntities ??= $OrderOfBattleEntitiesTable(this);
  $PsychicPowerEntitiesTable _psychicPowerEntities;
  $PsychicPowerEntitiesTable get psychicPowerEntities =>
      _psychicPowerEntities ??= $PsychicPowerEntitiesTable(this);
  $RelicEntitiesTable _relicEntities;
  $RelicEntitiesTable get relicEntities =>
      _relicEntities ??= $RelicEntitiesTable(this);
  $UnitModelEntitiesTable _unitModelEntities;
  $UnitModelEntitiesTable get unitModelEntities =>
      _unitModelEntities ??= $UnitModelEntitiesTable(this);
  $WarlordTraitEntitiesTable _warlordTraitEntities;
  $WarlordTraitEntitiesTable get warlordTraitEntities =>
      _warlordTraitEntities ??= $WarlordTraitEntitiesTable(this);
  BattleHonorDao _battleHonorDao;
  BattleHonorDao get battleHonorDao =>
      _battleHonorDao ??= BattleHonorDao(this as AppDatabase);
  BattleScarDao _battleScarDao;
  BattleScarDao get battleScarDao =>
      _battleScarDao ??= BattleScarDao(this as AppDatabase);
  CrusadeCardDao _crusadeCardDao;
  CrusadeCardDao get crusadeCardDao =>
      _crusadeCardDao ??= CrusadeCardDao(this as AppDatabase);
  CrusadeForceDao _crusadeForceDao;
  CrusadeForceDao get crusadeForceDao =>
      _crusadeForceDao ??= CrusadeForceDao(this as AppDatabase);
  NoteDao _noteDao;
  NoteDao get noteDao => _noteDao ??= NoteDao(this as AppDatabase);
  OrderOfBattleDao _orderOfBattleDao;
  OrderOfBattleDao get orderOfBattleDao =>
      _orderOfBattleDao ??= OrderOfBattleDao(this as AppDatabase);
  PsychicPowerDao _psychicPowerDao;
  PsychicPowerDao get psychicPowerDao =>
      _psychicPowerDao ??= PsychicPowerDao(this as AppDatabase);
  RelicDao _relicDao;
  RelicDao get relicDao => _relicDao ??= RelicDao(this as AppDatabase);
  UnitModelDao _unitModelDao;
  UnitModelDao get unitModelDao =>
      _unitModelDao ??= UnitModelDao(this as AppDatabase);
  WarlordTraitDao _warlordTraitDao;
  WarlordTraitDao get warlordTraitDao =>
      _warlordTraitDao ??= WarlordTraitDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        battleHonorEntities,
        battleScarEntities,
        crusadeCardEntities,
        crusadeForceEntities,
        noteEntities,
        orderOfBattleEntities,
        psychicPowerEntities,
        relicEntities,
        unitModelEntities,
        warlordTraitEntities
      ];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$BattleHonorDaoMixin on DatabaseAccessor<AppDatabase> {
  $BattleHonorEntitiesTable get battleHonorEntities =>
      attachedDatabase.battleHonorEntities;
}
mixin _$BattleScarDaoMixin on DatabaseAccessor<AppDatabase> {
  $BattleScarEntitiesTable get battleScarEntities =>
      attachedDatabase.battleScarEntities;
}
mixin _$CrusadeCardDaoMixin on DatabaseAccessor<AppDatabase> {
  $CrusadeCardEntitiesTable get crusadeCardEntities =>
      attachedDatabase.crusadeCardEntities;
}
mixin _$CrusadeForceDaoMixin on DatabaseAccessor<AppDatabase> {
  $CrusadeForceEntitiesTable get crusadeForceEntities =>
      attachedDatabase.crusadeForceEntities;
}
mixin _$NoteDaoMixin on DatabaseAccessor<AppDatabase> {
  $NoteEntitiesTable get noteEntities => attachedDatabase.noteEntities;
}
mixin _$OrderOfBattleDaoMixin on DatabaseAccessor<AppDatabase> {
  $OrderOfBattleEntitiesTable get orderOfBattleEntities =>
      attachedDatabase.orderOfBattleEntities;
}
mixin _$PsychicPowerDaoMixin on DatabaseAccessor<AppDatabase> {
  $PsychicPowerEntitiesTable get psychicPowerEntities =>
      attachedDatabase.psychicPowerEntities;
}
mixin _$RelicDaoMixin on DatabaseAccessor<AppDatabase> {
  $RelicEntitiesTable get relicEntities => attachedDatabase.relicEntities;
}
mixin _$UnitModelDaoMixin on DatabaseAccessor<AppDatabase> {
  $UnitModelEntitiesTable get unitModelEntities =>
      attachedDatabase.unitModelEntities;
}
mixin _$WarlordTraitDaoMixin on DatabaseAccessor<AppDatabase> {
  $WarlordTraitEntitiesTable get warlordTraitEntities =>
      attachedDatabase.warlordTraitEntities;
}
