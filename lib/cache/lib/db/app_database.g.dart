// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class BattleHonor extends DataClass implements Insertable<BattleHonor> {
  final int id;
  final int crusadeCardId;
  final int typeId;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  BattleHonor(
      {@required this.id,
      @required this.crusadeCardId,
      @required this.typeId,
      @required this.name,
      this.description,
      @required this.createdAt,
      @required this.updatedAt});
  factory BattleHonor.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return BattleHonor(
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

  BattleHonorsCompanion toCompanion(bool nullToAbsent) {
    return BattleHonorsCompanion(
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

  factory BattleHonor.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BattleHonor(
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

  BattleHonor copyWith(
          {int id,
          int crusadeCardId,
          int typeId,
          String name,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      BattleHonor(
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
    return (StringBuffer('BattleHonor(')
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
      (other is BattleHonor &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.typeId == this.typeId &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class BattleHonorsCompanion extends UpdateCompanion<BattleHonor> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<int> typeId;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const BattleHonorsCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.typeId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  BattleHonorsCompanion.insert({
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
  static Insertable<BattleHonor> custom({
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

  BattleHonorsCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<int> typeId,
      Value<String> name,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return BattleHonorsCompanion(
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
    return (StringBuffer('BattleHonorsCompanion(')
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

class $BattleHonorsTable extends BattleHonors
    with TableInfo<$BattleHonorsTable, BattleHonor> {
  final GeneratedDatabase _db;
  final String _alias;
  $BattleHonorsTable(this._db, [this._alias]);
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
  $BattleHonorsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'battle_honors';
  @override
  final String actualTableName = 'battle_honors';
  @override
  VerificationContext validateIntegrity(Insertable<BattleHonor> instance,
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
  BattleHonor map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BattleHonor.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $BattleHonorsTable createAlias(String alias) {
    return $BattleHonorsTable(_db, alias);
  }
}

class BattleScar extends DataClass implements Insertable<BattleScar> {
  final int id;
  final int crusadeCardId;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  BattleScar(
      {@required this.id,
      @required this.crusadeCardId,
      @required this.name,
      this.description,
      @required this.createdAt,
      @required this.updatedAt});
  factory BattleScar.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return BattleScar(
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

  BattleScarsCompanion toCompanion(bool nullToAbsent) {
    return BattleScarsCompanion(
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

  factory BattleScar.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BattleScar(
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

  BattleScar copyWith(
          {int id,
          int crusadeCardId,
          String name,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      BattleScar(
        id: id ?? this.id,
        crusadeCardId: crusadeCardId ?? this.crusadeCardId,
        name: name ?? this.name,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('BattleScar(')
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
      (other is BattleScar &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class BattleScarsCompanion extends UpdateCompanion<BattleScar> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const BattleScarsCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  BattleScarsCompanion.insert({
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
  static Insertable<BattleScar> custom({
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

  BattleScarsCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<String> name,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return BattleScarsCompanion(
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
    return (StringBuffer('BattleScarsCompanion(')
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

class $BattleScarsTable extends BattleScars
    with TableInfo<$BattleScarsTable, BattleScar> {
  final GeneratedDatabase _db;
  final String _alias;
  $BattleScarsTable(this._db, [this._alias]);
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
  $BattleScarsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'battle_scars';
  @override
  final String actualTableName = 'battle_scars';
  @override
  VerificationContext validateIntegrity(Insertable<BattleScar> instance,
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
  BattleScar map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BattleScar.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $BattleScarsTable createAlias(String alias) {
    return $BattleScarsTable(_db, alias);
  }
}

class CrusadeCard extends DataClass implements Insertable<CrusadeCard> {
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
  CrusadeCard(
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
  factory CrusadeCard.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return CrusadeCard(
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

  CrusadeCardsCompanion toCompanion(bool nullToAbsent) {
    return CrusadeCardsCompanion(
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

  factory CrusadeCard.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CrusadeCard(
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

  CrusadeCard copyWith(
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
      CrusadeCard(
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
    return (StringBuffer('CrusadeCard(')
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
      (other is CrusadeCard &&
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

class CrusadeCardsCompanion extends UpdateCompanion<CrusadeCard> {
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
  const CrusadeCardsCompanion({
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
  CrusadeCardsCompanion.insert({
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
  static Insertable<CrusadeCard> custom({
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

  CrusadeCardsCompanion copyWith(
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
    return CrusadeCardsCompanion(
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
    return (StringBuffer('CrusadeCardsCompanion(')
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

class $CrusadeCardsTable extends CrusadeCards
    with TableInfo<$CrusadeCardsTable, CrusadeCard> {
  final GeneratedDatabase _db;
  final String _alias;
  $CrusadeCardsTable(this._db, [this._alias]);
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
  $CrusadeCardsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'crusade_cards';
  @override
  final String actualTableName = 'crusade_cards';
  @override
  VerificationContext validateIntegrity(Insertable<CrusadeCard> instance,
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
  CrusadeCard map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CrusadeCard.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CrusadeCardsTable createAlias(String alias) {
    return $CrusadeCardsTable(_db, alias);
  }
}

class CrusadeForce extends DataClass implements Insertable<CrusadeForce> {
  final int id;
  final String crusadeFactionKeyword;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  CrusadeForce(
      {@required this.id,
      @required this.crusadeFactionKeyword,
      this.description,
      @required this.createdAt,
      @required this.updatedAt});
  factory CrusadeForce.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return CrusadeForce(
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

  CrusadeForcesCompanion toCompanion(bool nullToAbsent) {
    return CrusadeForcesCompanion(
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

  factory CrusadeForce.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CrusadeForce(
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

  CrusadeForce copyWith(
          {int id,
          String crusadeFactionKeyword,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      CrusadeForce(
        id: id ?? this.id,
        crusadeFactionKeyword:
            crusadeFactionKeyword ?? this.crusadeFactionKeyword,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('CrusadeForce(')
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
      (other is CrusadeForce &&
          other.id == this.id &&
          other.crusadeFactionKeyword == this.crusadeFactionKeyword &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CrusadeForcesCompanion extends UpdateCompanion<CrusadeForce> {
  final Value<int> id;
  final Value<String> crusadeFactionKeyword;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const CrusadeForcesCompanion({
    this.id = const Value.absent(),
    this.crusadeFactionKeyword = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CrusadeForcesCompanion.insert({
    this.id = const Value.absent(),
    @required String crusadeFactionKeyword,
    this.description = const Value.absent(),
    @required DateTime createdAt,
    @required DateTime updatedAt,
  })  : crusadeFactionKeyword = Value(crusadeFactionKeyword),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<CrusadeForce> custom({
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

  CrusadeForcesCompanion copyWith(
      {Value<int> id,
      Value<String> crusadeFactionKeyword,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return CrusadeForcesCompanion(
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
    return (StringBuffer('CrusadeForcesCompanion(')
          ..write('id: $id, ')
          ..write('crusadeFactionKeyword: $crusadeFactionKeyword, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CrusadeForcesTable extends CrusadeForces
    with TableInfo<$CrusadeForcesTable, CrusadeForce> {
  final GeneratedDatabase _db;
  final String _alias;
  $CrusadeForcesTable(this._db, [this._alias]);
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
  $CrusadeForcesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'crusade_forces';
  @override
  final String actualTableName = 'crusade_forces';
  @override
  VerificationContext validateIntegrity(Insertable<CrusadeForce> instance,
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
  CrusadeForce map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CrusadeForce.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CrusadeForcesTable createAlias(String alias) {
    return $CrusadeForcesTable(_db, alias);
  }
}

class Note extends DataClass implements Insertable<Note> {
  final int id;
  final int crusadeCardId;
  final int orderOfBattleId;
  final String label;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  Note(
      {@required this.id,
      this.crusadeCardId,
      this.orderOfBattleId,
      @required this.label,
      @required this.description,
      @required this.createdAt,
      @required this.updatedAt});
  factory Note.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Note(
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

  NotesCompanion toCompanion(bool nullToAbsent) {
    return NotesCompanion(
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

  factory Note.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Note(
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

  Note copyWith(
          {int id,
          int crusadeCardId,
          int orderOfBattleId,
          String label,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      Note(
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
    return (StringBuffer('Note(')
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
      (other is Note &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.orderOfBattleId == this.orderOfBattleId &&
          other.label == this.label &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class NotesCompanion extends UpdateCompanion<Note> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<int> orderOfBattleId;
  final Value<String> label;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const NotesCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.orderOfBattleId = const Value.absent(),
    this.label = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  NotesCompanion.insert({
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
  static Insertable<Note> custom({
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

  NotesCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<int> orderOfBattleId,
      Value<String> label,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return NotesCompanion(
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
    return (StringBuffer('NotesCompanion(')
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

class $NotesTable extends Notes with TableInfo<$NotesTable, Note> {
  final GeneratedDatabase _db;
  final String _alias;
  $NotesTable(this._db, [this._alias]);
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
  $NotesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'notes';
  @override
  final String actualTableName = 'notes';
  @override
  VerificationContext validateIntegrity(Insertable<Note> instance,
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
  Note map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Note.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $NotesTable createAlias(String alias) {
    return $NotesTable(_db, alias);
  }
}

class OrderOfBattle extends DataClass implements Insertable<OrderOfBattle> {
  final int id;
  final int crusadeForceId;
  final int supplyLimit;
  final int battleTally;
  final int requisitionPoints;
  final int battlesWon;
  final int battlesLost;
  final DateTime createdAt;
  final DateTime updatedAt;
  OrderOfBattle(
      {@required this.id,
      @required this.crusadeForceId,
      @required this.supplyLimit,
      @required this.battleTally,
      @required this.requisitionPoints,
      @required this.battlesWon,
      @required this.battlesLost,
      @required this.createdAt,
      @required this.updatedAt});
  factory OrderOfBattle.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return OrderOfBattle(
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

  OrderOfBattlesCompanion toCompanion(bool nullToAbsent) {
    return OrderOfBattlesCompanion(
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

  factory OrderOfBattle.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return OrderOfBattle(
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

  OrderOfBattle copyWith(
          {int id,
          int crusadeForceId,
          int supplyLimit,
          int battleTally,
          int requisitionPoints,
          int battlesWon,
          int battlesLost,
          DateTime createdAt,
          DateTime updatedAt}) =>
      OrderOfBattle(
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
    return (StringBuffer('OrderOfBattle(')
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
      (other is OrderOfBattle &&
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

class OrderOfBattlesCompanion extends UpdateCompanion<OrderOfBattle> {
  final Value<int> id;
  final Value<int> crusadeForceId;
  final Value<int> supplyLimit;
  final Value<int> battleTally;
  final Value<int> requisitionPoints;
  final Value<int> battlesWon;
  final Value<int> battlesLost;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const OrderOfBattlesCompanion({
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
  OrderOfBattlesCompanion.insert({
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
  static Insertable<OrderOfBattle> custom({
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

  OrderOfBattlesCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeForceId,
      Value<int> supplyLimit,
      Value<int> battleTally,
      Value<int> requisitionPoints,
      Value<int> battlesWon,
      Value<int> battlesLost,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return OrderOfBattlesCompanion(
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
    return (StringBuffer('OrderOfBattlesCompanion(')
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

class $OrderOfBattlesTable extends OrderOfBattles
    with TableInfo<$OrderOfBattlesTable, OrderOfBattle> {
  final GeneratedDatabase _db;
  final String _alias;
  $OrderOfBattlesTable(this._db, [this._alias]);
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
  $OrderOfBattlesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'order_of_battles';
  @override
  final String actualTableName = 'order_of_battles';
  @override
  VerificationContext validateIntegrity(Insertable<OrderOfBattle> instance,
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
  OrderOfBattle map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return OrderOfBattle.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $OrderOfBattlesTable createAlias(String alias) {
    return $OrderOfBattlesTable(_db, alias);
  }
}

class PsychicPower extends DataClass implements Insertable<PsychicPower> {
  final int id;
  final int crusadeCardId;
  final String name;
  final int warpCharge;
  final String description;
  final bool fromBattleHonor;
  final DateTime createdAt;
  final DateTime updatedAt;
  PsychicPower(
      {@required this.id,
      @required this.crusadeCardId,
      @required this.name,
      @required this.warpCharge,
      this.description,
      @required this.fromBattleHonor,
      @required this.createdAt,
      @required this.updatedAt});
  factory PsychicPower.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return PsychicPower(
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

  PsychicPowersCompanion toCompanion(bool nullToAbsent) {
    return PsychicPowersCompanion(
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

  factory PsychicPower.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PsychicPower(
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

  PsychicPower copyWith(
          {int id,
          int crusadeCardId,
          String name,
          int warpCharge,
          String description,
          bool fromBattleHonor,
          DateTime createdAt,
          DateTime updatedAt}) =>
      PsychicPower(
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
    return (StringBuffer('PsychicPower(')
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
      (other is PsychicPower &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.name == this.name &&
          other.warpCharge == this.warpCharge &&
          other.description == this.description &&
          other.fromBattleHonor == this.fromBattleHonor &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PsychicPowersCompanion extends UpdateCompanion<PsychicPower> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<String> name;
  final Value<int> warpCharge;
  final Value<String> description;
  final Value<bool> fromBattleHonor;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const PsychicPowersCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.name = const Value.absent(),
    this.warpCharge = const Value.absent(),
    this.description = const Value.absent(),
    this.fromBattleHonor = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  PsychicPowersCompanion.insert({
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
  static Insertable<PsychicPower> custom({
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

  PsychicPowersCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<String> name,
      Value<int> warpCharge,
      Value<String> description,
      Value<bool> fromBattleHonor,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return PsychicPowersCompanion(
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
    return (StringBuffer('PsychicPowersCompanion(')
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

class $PsychicPowersTable extends PsychicPowers
    with TableInfo<$PsychicPowersTable, PsychicPower> {
  final GeneratedDatabase _db;
  final String _alias;
  $PsychicPowersTable(this._db, [this._alias]);
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
  $PsychicPowersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'psychic_powers';
  @override
  final String actualTableName = 'psychic_powers';
  @override
  VerificationContext validateIntegrity(Insertable<PsychicPower> instance,
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
  PsychicPower map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PsychicPower.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PsychicPowersTable createAlias(String alias) {
    return $PsychicPowersTable(_db, alias);
  }
}

class Relic extends DataClass implements Insertable<Relic> {
  final int id;
  final int crusadeCardId;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  Relic(
      {@required this.id,
      @required this.crusadeCardId,
      @required this.name,
      this.description,
      @required this.createdAt,
      @required this.updatedAt});
  factory Relic.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Relic(
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

  RelicsCompanion toCompanion(bool nullToAbsent) {
    return RelicsCompanion(
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

  factory Relic.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Relic(
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

  Relic copyWith(
          {int id,
          int crusadeCardId,
          String name,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      Relic(
        id: id ?? this.id,
        crusadeCardId: crusadeCardId ?? this.crusadeCardId,
        name: name ?? this.name,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Relic(')
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
      (other is Relic &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class RelicsCompanion extends UpdateCompanion<Relic> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const RelicsCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  RelicsCompanion.insert({
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
  static Insertable<Relic> custom({
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

  RelicsCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<String> name,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return RelicsCompanion(
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
    return (StringBuffer('RelicsCompanion(')
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

class $RelicsTable extends Relics with TableInfo<$RelicsTable, Relic> {
  final GeneratedDatabase _db;
  final String _alias;
  $RelicsTable(this._db, [this._alias]);
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
  $RelicsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'relics';
  @override
  final String actualTableName = 'relics';
  @override
  VerificationContext validateIntegrity(Insertable<Relic> instance,
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
  Relic map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Relic.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $RelicsTable createAlias(String alias) {
    return $RelicsTable(_db, alias);
  }
}

class UnitModel extends DataClass implements Insertable<UnitModel> {
  final int id;
  final int crusadeCardId;
  final String name;
  final String wargear;
  final DateTime createdAt;
  final DateTime updatedAt;
  UnitModel(
      {@required this.id,
      @required this.crusadeCardId,
      @required this.name,
      @required this.wargear,
      @required this.createdAt,
      @required this.updatedAt});
  factory UnitModel.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return UnitModel(
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

  UnitModelsCompanion toCompanion(bool nullToAbsent) {
    return UnitModelsCompanion(
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

  factory UnitModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UnitModel(
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

  UnitModel copyWith(
          {int id,
          int crusadeCardId,
          String name,
          String wargear,
          DateTime createdAt,
          DateTime updatedAt}) =>
      UnitModel(
        id: id ?? this.id,
        crusadeCardId: crusadeCardId ?? this.crusadeCardId,
        name: name ?? this.name,
        wargear: wargear ?? this.wargear,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('UnitModel(')
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
      (other is UnitModel &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.name == this.name &&
          other.wargear == this.wargear &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class UnitModelsCompanion extends UpdateCompanion<UnitModel> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<String> name;
  final Value<String> wargear;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const UnitModelsCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.name = const Value.absent(),
    this.wargear = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  UnitModelsCompanion.insert({
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
  static Insertable<UnitModel> custom({
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

  UnitModelsCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<String> name,
      Value<String> wargear,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return UnitModelsCompanion(
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
    return (StringBuffer('UnitModelsCompanion(')
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

class $UnitModelsTable extends UnitModels
    with TableInfo<$UnitModelsTable, UnitModel> {
  final GeneratedDatabase _db;
  final String _alias;
  $UnitModelsTable(this._db, [this._alias]);
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
  $UnitModelsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'unit_models';
  @override
  final String actualTableName = 'unit_models';
  @override
  VerificationContext validateIntegrity(Insertable<UnitModel> instance,
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
  UnitModel map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UnitModel.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UnitModelsTable createAlias(String alias) {
    return $UnitModelsTable(_db, alias);
  }
}

class WarlordTrait extends DataClass implements Insertable<WarlordTrait> {
  final int id;
  final int crusadeCardId;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  WarlordTrait(
      {@required this.id,
      @required this.crusadeCardId,
      @required this.name,
      this.description,
      @required this.createdAt,
      @required this.updatedAt});
  factory WarlordTrait.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return WarlordTrait(
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

  WarlordTraitsCompanion toCompanion(bool nullToAbsent) {
    return WarlordTraitsCompanion(
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

  factory WarlordTrait.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return WarlordTrait(
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

  WarlordTrait copyWith(
          {int id,
          int crusadeCardId,
          String name,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      WarlordTrait(
        id: id ?? this.id,
        crusadeCardId: crusadeCardId ?? this.crusadeCardId,
        name: name ?? this.name,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('WarlordTrait(')
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
      (other is WarlordTrait &&
          other.id == this.id &&
          other.crusadeCardId == this.crusadeCardId &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class WarlordTraitsCompanion extends UpdateCompanion<WarlordTrait> {
  final Value<int> id;
  final Value<int> crusadeCardId;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const WarlordTraitsCompanion({
    this.id = const Value.absent(),
    this.crusadeCardId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  WarlordTraitsCompanion.insert({
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
  static Insertable<WarlordTrait> custom({
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

  WarlordTraitsCompanion copyWith(
      {Value<int> id,
      Value<int> crusadeCardId,
      Value<String> name,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return WarlordTraitsCompanion(
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
    return (StringBuffer('WarlordTraitsCompanion(')
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

class $WarlordTraitsTable extends WarlordTraits
    with TableInfo<$WarlordTraitsTable, WarlordTrait> {
  final GeneratedDatabase _db;
  final String _alias;
  $WarlordTraitsTable(this._db, [this._alias]);
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
  $WarlordTraitsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'warlord_traits';
  @override
  final String actualTableName = 'warlord_traits';
  @override
  VerificationContext validateIntegrity(Insertable<WarlordTrait> instance,
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
  WarlordTrait map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return WarlordTrait.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $WarlordTraitsTable createAlias(String alias) {
    return $WarlordTraitsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $BattleHonorsTable _battleHonors;
  $BattleHonorsTable get battleHonors =>
      _battleHonors ??= $BattleHonorsTable(this);
  $BattleScarsTable _battleScars;
  $BattleScarsTable get battleScars => _battleScars ??= $BattleScarsTable(this);
  $CrusadeCardsTable _crusadeCards;
  $CrusadeCardsTable get crusadeCards =>
      _crusadeCards ??= $CrusadeCardsTable(this);
  $CrusadeForcesTable _crusadeForces;
  $CrusadeForcesTable get crusadeForces =>
      _crusadeForces ??= $CrusadeForcesTable(this);
  $NotesTable _notes;
  $NotesTable get notes => _notes ??= $NotesTable(this);
  $OrderOfBattlesTable _orderOfBattles;
  $OrderOfBattlesTable get orderOfBattles =>
      _orderOfBattles ??= $OrderOfBattlesTable(this);
  $PsychicPowersTable _psychicPowers;
  $PsychicPowersTable get psychicPowers =>
      _psychicPowers ??= $PsychicPowersTable(this);
  $RelicsTable _relics;
  $RelicsTable get relics => _relics ??= $RelicsTable(this);
  $UnitModelsTable _unitModels;
  $UnitModelsTable get unitModels => _unitModels ??= $UnitModelsTable(this);
  $WarlordTraitsTable _warlordTraits;
  $WarlordTraitsTable get warlordTraits =>
      _warlordTraits ??= $WarlordTraitsTable(this);
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
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        battleHonors,
        battleScars,
        crusadeCards,
        crusadeForces,
        notes,
        orderOfBattles,
        psychicPowers,
        relics,
        unitModels,
        warlordTraits
      ];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$BattleHonorDaoMixin on DatabaseAccessor<AppDatabase> {
  $BattleHonorsTable get battleHonors => attachedDatabase.battleHonors;
}
mixin _$BattleScarDaoMixin on DatabaseAccessor<AppDatabase> {
  $BattleScarsTable get battleScars => attachedDatabase.battleScars;
}
mixin _$CrusadeCardDaoMixin on DatabaseAccessor<AppDatabase> {
  $CrusadeCardsTable get crusadeCards => attachedDatabase.crusadeCards;
}
mixin _$CrusadeForceDaoMixin on DatabaseAccessor<AppDatabase> {
  $CrusadeForcesTable get crusadeForces => attachedDatabase.crusadeForces;
}
mixin _$NoteDaoMixin on DatabaseAccessor<AppDatabase> {
  $NotesTable get notes => attachedDatabase.notes;
}
mixin _$OrderOfBattleDaoMixin on DatabaseAccessor<AppDatabase> {
  $OrderOfBattlesTable get orderOfBattles => attachedDatabase.orderOfBattles;
}
mixin _$PsychicPowerDaoMixin on DatabaseAccessor<AppDatabase> {
  $PsychicPowersTable get psychicPowers => attachedDatabase.psychicPowers;
}
