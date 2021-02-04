// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExpensesFailureTearOff {
  const _$ExpensesFailureTearOff();

// ignore: unused_element
  GetExpensesFailure getFailure(
      {String description = 'Error getting expenses'}) {
    return GetExpensesFailure(
      description: description,
    );
  }

// ignore: unused_element
  AddExpenseFailure addFailure({String description = 'Error adding expense'}) {
    return AddExpenseFailure(
      description: description,
    );
  }

// ignore: unused_element
  RemoveExpenseFailure removeFailure(
      {String description = 'Error removing expense'}) {
    return RemoveExpenseFailure(
      description: description,
    );
  }

// ignore: unused_element
  EditExpenseFailure editFailure(
      {String description = 'Error editing expense'}) {
    return EditExpenseFailure(
      description: description,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExpensesFailure = _$ExpensesFailureTearOff();

/// @nodoc
mixin _$ExpensesFailure {
  String get description;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
    @required TResult editFailure(String description),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    TResult editFailure(String description),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getFailure(GetExpensesFailure value),
    @required TResult addFailure(AddExpenseFailure value),
    @required TResult removeFailure(RemoveExpenseFailure value),
    @required TResult editFailure(EditExpenseFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getFailure(GetExpensesFailure value),
    TResult addFailure(AddExpenseFailure value),
    TResult removeFailure(RemoveExpenseFailure value),
    TResult editFailure(EditExpenseFailure value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ExpensesFailureCopyWith<ExpensesFailure> get copyWith;
}

/// @nodoc
abstract class $ExpensesFailureCopyWith<$Res> {
  factory $ExpensesFailureCopyWith(
          ExpensesFailure value, $Res Function(ExpensesFailure) then) =
      _$ExpensesFailureCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$ExpensesFailureCopyWithImpl<$Res>
    implements $ExpensesFailureCopyWith<$Res> {
  _$ExpensesFailureCopyWithImpl(this._value, this._then);

  final ExpensesFailure _value;
  // ignore: unused_field
  final $Res Function(ExpensesFailure) _then;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class $GetExpensesFailureCopyWith<$Res>
    implements $ExpensesFailureCopyWith<$Res> {
  factory $GetExpensesFailureCopyWith(
          GetExpensesFailure value, $Res Function(GetExpensesFailure) then) =
      _$GetExpensesFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$GetExpensesFailureCopyWithImpl<$Res>
    extends _$ExpensesFailureCopyWithImpl<$Res>
    implements $GetExpensesFailureCopyWith<$Res> {
  _$GetExpensesFailureCopyWithImpl(
      GetExpensesFailure _value, $Res Function(GetExpensesFailure) _then)
      : super(_value, (v) => _then(v as GetExpensesFailure));

  @override
  GetExpensesFailure get _value => super._value as GetExpensesFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(GetExpensesFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$GetExpensesFailure implements GetExpensesFailure {
  const _$GetExpensesFailure({this.description = 'Error getting expenses'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error getting expenses')
  @override
  final String description;

  @override
  String toString() {
    return 'ExpensesFailure.getFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetExpensesFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $GetExpensesFailureCopyWith<GetExpensesFailure> get copyWith =>
      _$GetExpensesFailureCopyWithImpl<GetExpensesFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
    @required TResult editFailure(String description),
  }) {
    assert(getFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    return getFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    TResult editFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getFailure != null) {
      return getFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getFailure(GetExpensesFailure value),
    @required TResult addFailure(AddExpenseFailure value),
    @required TResult removeFailure(RemoveExpenseFailure value),
    @required TResult editFailure(EditExpenseFailure value),
  }) {
    assert(getFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    return getFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getFailure(GetExpensesFailure value),
    TResult addFailure(AddExpenseFailure value),
    TResult removeFailure(RemoveExpenseFailure value),
    TResult editFailure(EditExpenseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getFailure != null) {
      return getFailure(this);
    }
    return orElse();
  }
}

abstract class GetExpensesFailure implements ExpensesFailure {
  const factory GetExpensesFailure({String description}) = _$GetExpensesFailure;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $GetExpensesFailureCopyWith<GetExpensesFailure> get copyWith;
}

/// @nodoc
abstract class $AddExpenseFailureCopyWith<$Res>
    implements $ExpensesFailureCopyWith<$Res> {
  factory $AddExpenseFailureCopyWith(
          AddExpenseFailure value, $Res Function(AddExpenseFailure) then) =
      _$AddExpenseFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$AddExpenseFailureCopyWithImpl<$Res>
    extends _$ExpensesFailureCopyWithImpl<$Res>
    implements $AddExpenseFailureCopyWith<$Res> {
  _$AddExpenseFailureCopyWithImpl(
      AddExpenseFailure _value, $Res Function(AddExpenseFailure) _then)
      : super(_value, (v) => _then(v as AddExpenseFailure));

  @override
  AddExpenseFailure get _value => super._value as AddExpenseFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(AddExpenseFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$AddExpenseFailure implements AddExpenseFailure {
  const _$AddExpenseFailure({this.description = 'Error adding expense'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error adding expense')
  @override
  final String description;

  @override
  String toString() {
    return 'ExpensesFailure.addFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddExpenseFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $AddExpenseFailureCopyWith<AddExpenseFailure> get copyWith =>
      _$AddExpenseFailureCopyWithImpl<AddExpenseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
    @required TResult editFailure(String description),
  }) {
    assert(getFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    return addFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    TResult editFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addFailure != null) {
      return addFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getFailure(GetExpensesFailure value),
    @required TResult addFailure(AddExpenseFailure value),
    @required TResult removeFailure(RemoveExpenseFailure value),
    @required TResult editFailure(EditExpenseFailure value),
  }) {
    assert(getFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    return addFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getFailure(GetExpensesFailure value),
    TResult addFailure(AddExpenseFailure value),
    TResult removeFailure(RemoveExpenseFailure value),
    TResult editFailure(EditExpenseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addFailure != null) {
      return addFailure(this);
    }
    return orElse();
  }
}

abstract class AddExpenseFailure implements ExpensesFailure {
  const factory AddExpenseFailure({String description}) = _$AddExpenseFailure;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $AddExpenseFailureCopyWith<AddExpenseFailure> get copyWith;
}

/// @nodoc
abstract class $RemoveExpenseFailureCopyWith<$Res>
    implements $ExpensesFailureCopyWith<$Res> {
  factory $RemoveExpenseFailureCopyWith(RemoveExpenseFailure value,
          $Res Function(RemoveExpenseFailure) then) =
      _$RemoveExpenseFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$RemoveExpenseFailureCopyWithImpl<$Res>
    extends _$ExpensesFailureCopyWithImpl<$Res>
    implements $RemoveExpenseFailureCopyWith<$Res> {
  _$RemoveExpenseFailureCopyWithImpl(
      RemoveExpenseFailure _value, $Res Function(RemoveExpenseFailure) _then)
      : super(_value, (v) => _then(v as RemoveExpenseFailure));

  @override
  RemoveExpenseFailure get _value => super._value as RemoveExpenseFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(RemoveExpenseFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$RemoveExpenseFailure implements RemoveExpenseFailure {
  const _$RemoveExpenseFailure({this.description = 'Error removing expense'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error removing expense')
  @override
  final String description;

  @override
  String toString() {
    return 'ExpensesFailure.removeFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveExpenseFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $RemoveExpenseFailureCopyWith<RemoveExpenseFailure> get copyWith =>
      _$RemoveExpenseFailureCopyWithImpl<RemoveExpenseFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
    @required TResult editFailure(String description),
  }) {
    assert(getFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    return removeFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    TResult editFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFailure != null) {
      return removeFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getFailure(GetExpensesFailure value),
    @required TResult addFailure(AddExpenseFailure value),
    @required TResult removeFailure(RemoveExpenseFailure value),
    @required TResult editFailure(EditExpenseFailure value),
  }) {
    assert(getFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    return removeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getFailure(GetExpensesFailure value),
    TResult addFailure(AddExpenseFailure value),
    TResult removeFailure(RemoveExpenseFailure value),
    TResult editFailure(EditExpenseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFailure != null) {
      return removeFailure(this);
    }
    return orElse();
  }
}

abstract class RemoveExpenseFailure implements ExpensesFailure {
  const factory RemoveExpenseFailure({String description}) =
      _$RemoveExpenseFailure;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $RemoveExpenseFailureCopyWith<RemoveExpenseFailure> get copyWith;
}

/// @nodoc
abstract class $EditExpenseFailureCopyWith<$Res>
    implements $ExpensesFailureCopyWith<$Res> {
  factory $EditExpenseFailureCopyWith(
          EditExpenseFailure value, $Res Function(EditExpenseFailure) then) =
      _$EditExpenseFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$EditExpenseFailureCopyWithImpl<$Res>
    extends _$ExpensesFailureCopyWithImpl<$Res>
    implements $EditExpenseFailureCopyWith<$Res> {
  _$EditExpenseFailureCopyWithImpl(
      EditExpenseFailure _value, $Res Function(EditExpenseFailure) _then)
      : super(_value, (v) => _then(v as EditExpenseFailure));

  @override
  EditExpenseFailure get _value => super._value as EditExpenseFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(EditExpenseFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$EditExpenseFailure implements EditExpenseFailure {
  const _$EditExpenseFailure({this.description = 'Error editing expense'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error editing expense')
  @override
  final String description;

  @override
  String toString() {
    return 'ExpensesFailure.editFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditExpenseFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $EditExpenseFailureCopyWith<EditExpenseFailure> get copyWith =>
      _$EditExpenseFailureCopyWithImpl<EditExpenseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
    @required TResult editFailure(String description),
  }) {
    assert(getFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    return editFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    TResult editFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editFailure != null) {
      return editFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getFailure(GetExpensesFailure value),
    @required TResult addFailure(AddExpenseFailure value),
    @required TResult removeFailure(RemoveExpenseFailure value),
    @required TResult editFailure(EditExpenseFailure value),
  }) {
    assert(getFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    return editFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getFailure(GetExpensesFailure value),
    TResult addFailure(AddExpenseFailure value),
    TResult removeFailure(RemoveExpenseFailure value),
    TResult editFailure(EditExpenseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editFailure != null) {
      return editFailure(this);
    }
    return orElse();
  }
}

abstract class EditExpenseFailure implements ExpensesFailure {
  const factory EditExpenseFailure({String description}) = _$EditExpenseFailure;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $EditExpenseFailureCopyWith<EditExpenseFailure> get copyWith;
}
