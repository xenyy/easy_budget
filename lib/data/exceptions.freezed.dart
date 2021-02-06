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
  GetExpensesFailure getExpenseFailure(
      {String description = 'Error getting expenses'}) {
    return GetExpensesFailure(
      description: description,
    );
  }

// ignore: unused_element
  AddExpenseFailure addExpenseFailure(
      {String description = 'Error adding expense'}) {
    return AddExpenseFailure(
      description: description,
    );
  }

// ignore: unused_element
  RemoveExpenseFailure removeExpenseFailure(
      {String description = 'Error removing expense'}) {
    return RemoveExpenseFailure(
      description: description,
    );
  }

// ignore: unused_element
  EditExpenseFailure editExpenseFailure(
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
    @required TResult getExpenseFailure(String description),
    @required TResult addExpenseFailure(String description),
    @required TResult removeExpenseFailure(String description),
    @required TResult editExpenseFailure(String description),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getExpenseFailure(String description),
    TResult addExpenseFailure(String description),
    TResult removeExpenseFailure(String description),
    TResult editExpenseFailure(String description),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getExpenseFailure(GetExpensesFailure value),
    @required TResult addExpenseFailure(AddExpenseFailure value),
    @required TResult removeExpenseFailure(RemoveExpenseFailure value),
    @required TResult editExpenseFailure(EditExpenseFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getExpenseFailure(GetExpensesFailure value),
    TResult addExpenseFailure(AddExpenseFailure value),
    TResult removeExpenseFailure(RemoveExpenseFailure value),
    TResult editExpenseFailure(EditExpenseFailure value),
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
    return 'ExpensesFailure.getExpenseFailure(description: $description)';
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
    @required TResult getExpenseFailure(String description),
    @required TResult addExpenseFailure(String description),
    @required TResult removeExpenseFailure(String description),
    @required TResult editExpenseFailure(String description),
  }) {
    assert(getExpenseFailure != null);
    assert(addExpenseFailure != null);
    assert(removeExpenseFailure != null);
    assert(editExpenseFailure != null);
    return getExpenseFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getExpenseFailure(String description),
    TResult addExpenseFailure(String description),
    TResult removeExpenseFailure(String description),
    TResult editExpenseFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getExpenseFailure != null) {
      return getExpenseFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getExpenseFailure(GetExpensesFailure value),
    @required TResult addExpenseFailure(AddExpenseFailure value),
    @required TResult removeExpenseFailure(RemoveExpenseFailure value),
    @required TResult editExpenseFailure(EditExpenseFailure value),
  }) {
    assert(getExpenseFailure != null);
    assert(addExpenseFailure != null);
    assert(removeExpenseFailure != null);
    assert(editExpenseFailure != null);
    return getExpenseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getExpenseFailure(GetExpensesFailure value),
    TResult addExpenseFailure(AddExpenseFailure value),
    TResult removeExpenseFailure(RemoveExpenseFailure value),
    TResult editExpenseFailure(EditExpenseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getExpenseFailure != null) {
      return getExpenseFailure(this);
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
    return 'ExpensesFailure.addExpenseFailure(description: $description)';
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
    @required TResult getExpenseFailure(String description),
    @required TResult addExpenseFailure(String description),
    @required TResult removeExpenseFailure(String description),
    @required TResult editExpenseFailure(String description),
  }) {
    assert(getExpenseFailure != null);
    assert(addExpenseFailure != null);
    assert(removeExpenseFailure != null);
    assert(editExpenseFailure != null);
    return addExpenseFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getExpenseFailure(String description),
    TResult addExpenseFailure(String description),
    TResult removeExpenseFailure(String description),
    TResult editExpenseFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addExpenseFailure != null) {
      return addExpenseFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getExpenseFailure(GetExpensesFailure value),
    @required TResult addExpenseFailure(AddExpenseFailure value),
    @required TResult removeExpenseFailure(RemoveExpenseFailure value),
    @required TResult editExpenseFailure(EditExpenseFailure value),
  }) {
    assert(getExpenseFailure != null);
    assert(addExpenseFailure != null);
    assert(removeExpenseFailure != null);
    assert(editExpenseFailure != null);
    return addExpenseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getExpenseFailure(GetExpensesFailure value),
    TResult addExpenseFailure(AddExpenseFailure value),
    TResult removeExpenseFailure(RemoveExpenseFailure value),
    TResult editExpenseFailure(EditExpenseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addExpenseFailure != null) {
      return addExpenseFailure(this);
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
    return 'ExpensesFailure.removeExpenseFailure(description: $description)';
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
    @required TResult getExpenseFailure(String description),
    @required TResult addExpenseFailure(String description),
    @required TResult removeExpenseFailure(String description),
    @required TResult editExpenseFailure(String description),
  }) {
    assert(getExpenseFailure != null);
    assert(addExpenseFailure != null);
    assert(removeExpenseFailure != null);
    assert(editExpenseFailure != null);
    return removeExpenseFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getExpenseFailure(String description),
    TResult addExpenseFailure(String description),
    TResult removeExpenseFailure(String description),
    TResult editExpenseFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeExpenseFailure != null) {
      return removeExpenseFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getExpenseFailure(GetExpensesFailure value),
    @required TResult addExpenseFailure(AddExpenseFailure value),
    @required TResult removeExpenseFailure(RemoveExpenseFailure value),
    @required TResult editExpenseFailure(EditExpenseFailure value),
  }) {
    assert(getExpenseFailure != null);
    assert(addExpenseFailure != null);
    assert(removeExpenseFailure != null);
    assert(editExpenseFailure != null);
    return removeExpenseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getExpenseFailure(GetExpensesFailure value),
    TResult addExpenseFailure(AddExpenseFailure value),
    TResult removeExpenseFailure(RemoveExpenseFailure value),
    TResult editExpenseFailure(EditExpenseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeExpenseFailure != null) {
      return removeExpenseFailure(this);
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
    return 'ExpensesFailure.editExpenseFailure(description: $description)';
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
    @required TResult getExpenseFailure(String description),
    @required TResult addExpenseFailure(String description),
    @required TResult removeExpenseFailure(String description),
    @required TResult editExpenseFailure(String description),
  }) {
    assert(getExpenseFailure != null);
    assert(addExpenseFailure != null);
    assert(removeExpenseFailure != null);
    assert(editExpenseFailure != null);
    return editExpenseFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getExpenseFailure(String description),
    TResult addExpenseFailure(String description),
    TResult removeExpenseFailure(String description),
    TResult editExpenseFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editExpenseFailure != null) {
      return editExpenseFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getExpenseFailure(GetExpensesFailure value),
    @required TResult addExpenseFailure(AddExpenseFailure value),
    @required TResult removeExpenseFailure(RemoveExpenseFailure value),
    @required TResult editExpenseFailure(EditExpenseFailure value),
  }) {
    assert(getExpenseFailure != null);
    assert(addExpenseFailure != null);
    assert(removeExpenseFailure != null);
    assert(editExpenseFailure != null);
    return editExpenseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getExpenseFailure(GetExpensesFailure value),
    TResult addExpenseFailure(AddExpenseFailure value),
    TResult removeExpenseFailure(RemoveExpenseFailure value),
    TResult editExpenseFailure(EditExpenseFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editExpenseFailure != null) {
      return editExpenseFailure(this);
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

/// @nodoc
class _$CategoryFailureTearOff {
  const _$CategoryFailureTearOff();

// ignore: unused_element
  GetCategoryFailure getCategoryFailure(
      {String description = 'Error getting category'}) {
    return GetCategoryFailure(
      description: description,
    );
  }

// ignore: unused_element
  AddCategoryFailure addCategoryFailure(
      {String description = 'Error adding category'}) {
    return AddCategoryFailure(
      description: description,
    );
  }

// ignore: unused_element
  RemoveCategoryFailure removeCategoryFailure(
      {String description = 'Error removing category'}) {
    return RemoveCategoryFailure(
      description: description,
    );
  }

// ignore: unused_element
  EditCategoryFailure editCategoryFailure(
      {String description = 'Error editing category'}) {
    return EditCategoryFailure(
      description: description,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryFailure = _$CategoryFailureTearOff();

/// @nodoc
mixin _$CategoryFailure {
  String get description;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getCategoryFailure(String description),
    @required TResult addCategoryFailure(String description),
    @required TResult removeCategoryFailure(String description),
    @required TResult editCategoryFailure(String description),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getCategoryFailure(String description),
    TResult addCategoryFailure(String description),
    TResult removeCategoryFailure(String description),
    TResult editCategoryFailure(String description),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getCategoryFailure(GetCategoryFailure value),
    @required TResult addCategoryFailure(AddCategoryFailure value),
    @required TResult removeCategoryFailure(RemoveCategoryFailure value),
    @required TResult editCategoryFailure(EditCategoryFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getCategoryFailure(GetCategoryFailure value),
    TResult addCategoryFailure(AddCategoryFailure value),
    TResult removeCategoryFailure(RemoveCategoryFailure value),
    TResult editCategoryFailure(EditCategoryFailure value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $CategoryFailureCopyWith<CategoryFailure> get copyWith;
}

/// @nodoc
abstract class $CategoryFailureCopyWith<$Res> {
  factory $CategoryFailureCopyWith(
          CategoryFailure value, $Res Function(CategoryFailure) then) =
      _$CategoryFailureCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$CategoryFailureCopyWithImpl<$Res>
    implements $CategoryFailureCopyWith<$Res> {
  _$CategoryFailureCopyWithImpl(this._value, this._then);

  final CategoryFailure _value;
  // ignore: unused_field
  final $Res Function(CategoryFailure) _then;

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
abstract class $GetCategoryFailureCopyWith<$Res>
    implements $CategoryFailureCopyWith<$Res> {
  factory $GetCategoryFailureCopyWith(
          GetCategoryFailure value, $Res Function(GetCategoryFailure) then) =
      _$GetCategoryFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$GetCategoryFailureCopyWithImpl<$Res>
    extends _$CategoryFailureCopyWithImpl<$Res>
    implements $GetCategoryFailureCopyWith<$Res> {
  _$GetCategoryFailureCopyWithImpl(
      GetCategoryFailure _value, $Res Function(GetCategoryFailure) _then)
      : super(_value, (v) => _then(v as GetCategoryFailure));

  @override
  GetCategoryFailure get _value => super._value as GetCategoryFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(GetCategoryFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$GetCategoryFailure implements GetCategoryFailure {
  const _$GetCategoryFailure({this.description = 'Error getting category'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error getting category')
  @override
  final String description;

  @override
  String toString() {
    return 'CategoryFailure.getCategoryFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCategoryFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $GetCategoryFailureCopyWith<GetCategoryFailure> get copyWith =>
      _$GetCategoryFailureCopyWithImpl<GetCategoryFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getCategoryFailure(String description),
    @required TResult addCategoryFailure(String description),
    @required TResult removeCategoryFailure(String description),
    @required TResult editCategoryFailure(String description),
  }) {
    assert(getCategoryFailure != null);
    assert(addCategoryFailure != null);
    assert(removeCategoryFailure != null);
    assert(editCategoryFailure != null);
    return getCategoryFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getCategoryFailure(String description),
    TResult addCategoryFailure(String description),
    TResult removeCategoryFailure(String description),
    TResult editCategoryFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCategoryFailure != null) {
      return getCategoryFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getCategoryFailure(GetCategoryFailure value),
    @required TResult addCategoryFailure(AddCategoryFailure value),
    @required TResult removeCategoryFailure(RemoveCategoryFailure value),
    @required TResult editCategoryFailure(EditCategoryFailure value),
  }) {
    assert(getCategoryFailure != null);
    assert(addCategoryFailure != null);
    assert(removeCategoryFailure != null);
    assert(editCategoryFailure != null);
    return getCategoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getCategoryFailure(GetCategoryFailure value),
    TResult addCategoryFailure(AddCategoryFailure value),
    TResult removeCategoryFailure(RemoveCategoryFailure value),
    TResult editCategoryFailure(EditCategoryFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCategoryFailure != null) {
      return getCategoryFailure(this);
    }
    return orElse();
  }
}

abstract class GetCategoryFailure implements CategoryFailure {
  const factory GetCategoryFailure({String description}) = _$GetCategoryFailure;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $GetCategoryFailureCopyWith<GetCategoryFailure> get copyWith;
}

/// @nodoc
abstract class $AddCategoryFailureCopyWith<$Res>
    implements $CategoryFailureCopyWith<$Res> {
  factory $AddCategoryFailureCopyWith(
          AddCategoryFailure value, $Res Function(AddCategoryFailure) then) =
      _$AddCategoryFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$AddCategoryFailureCopyWithImpl<$Res>
    extends _$CategoryFailureCopyWithImpl<$Res>
    implements $AddCategoryFailureCopyWith<$Res> {
  _$AddCategoryFailureCopyWithImpl(
      AddCategoryFailure _value, $Res Function(AddCategoryFailure) _then)
      : super(_value, (v) => _then(v as AddCategoryFailure));

  @override
  AddCategoryFailure get _value => super._value as AddCategoryFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(AddCategoryFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$AddCategoryFailure implements AddCategoryFailure {
  const _$AddCategoryFailure({this.description = 'Error adding category'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error adding category')
  @override
  final String description;

  @override
  String toString() {
    return 'CategoryFailure.addCategoryFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddCategoryFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $AddCategoryFailureCopyWith<AddCategoryFailure> get copyWith =>
      _$AddCategoryFailureCopyWithImpl<AddCategoryFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getCategoryFailure(String description),
    @required TResult addCategoryFailure(String description),
    @required TResult removeCategoryFailure(String description),
    @required TResult editCategoryFailure(String description),
  }) {
    assert(getCategoryFailure != null);
    assert(addCategoryFailure != null);
    assert(removeCategoryFailure != null);
    assert(editCategoryFailure != null);
    return addCategoryFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getCategoryFailure(String description),
    TResult addCategoryFailure(String description),
    TResult removeCategoryFailure(String description),
    TResult editCategoryFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addCategoryFailure != null) {
      return addCategoryFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getCategoryFailure(GetCategoryFailure value),
    @required TResult addCategoryFailure(AddCategoryFailure value),
    @required TResult removeCategoryFailure(RemoveCategoryFailure value),
    @required TResult editCategoryFailure(EditCategoryFailure value),
  }) {
    assert(getCategoryFailure != null);
    assert(addCategoryFailure != null);
    assert(removeCategoryFailure != null);
    assert(editCategoryFailure != null);
    return addCategoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getCategoryFailure(GetCategoryFailure value),
    TResult addCategoryFailure(AddCategoryFailure value),
    TResult removeCategoryFailure(RemoveCategoryFailure value),
    TResult editCategoryFailure(EditCategoryFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addCategoryFailure != null) {
      return addCategoryFailure(this);
    }
    return orElse();
  }
}

abstract class AddCategoryFailure implements CategoryFailure {
  const factory AddCategoryFailure({String description}) = _$AddCategoryFailure;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $AddCategoryFailureCopyWith<AddCategoryFailure> get copyWith;
}

/// @nodoc
abstract class $RemoveCategoryFailureCopyWith<$Res>
    implements $CategoryFailureCopyWith<$Res> {
  factory $RemoveCategoryFailureCopyWith(RemoveCategoryFailure value,
          $Res Function(RemoveCategoryFailure) then) =
      _$RemoveCategoryFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$RemoveCategoryFailureCopyWithImpl<$Res>
    extends _$CategoryFailureCopyWithImpl<$Res>
    implements $RemoveCategoryFailureCopyWith<$Res> {
  _$RemoveCategoryFailureCopyWithImpl(
      RemoveCategoryFailure _value, $Res Function(RemoveCategoryFailure) _then)
      : super(_value, (v) => _then(v as RemoveCategoryFailure));

  @override
  RemoveCategoryFailure get _value => super._value as RemoveCategoryFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(RemoveCategoryFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$RemoveCategoryFailure implements RemoveCategoryFailure {
  const _$RemoveCategoryFailure({this.description = 'Error removing category'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error removing category')
  @override
  final String description;

  @override
  String toString() {
    return 'CategoryFailure.removeCategoryFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveCategoryFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $RemoveCategoryFailureCopyWith<RemoveCategoryFailure> get copyWith =>
      _$RemoveCategoryFailureCopyWithImpl<RemoveCategoryFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getCategoryFailure(String description),
    @required TResult addCategoryFailure(String description),
    @required TResult removeCategoryFailure(String description),
    @required TResult editCategoryFailure(String description),
  }) {
    assert(getCategoryFailure != null);
    assert(addCategoryFailure != null);
    assert(removeCategoryFailure != null);
    assert(editCategoryFailure != null);
    return removeCategoryFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getCategoryFailure(String description),
    TResult addCategoryFailure(String description),
    TResult removeCategoryFailure(String description),
    TResult editCategoryFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeCategoryFailure != null) {
      return removeCategoryFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getCategoryFailure(GetCategoryFailure value),
    @required TResult addCategoryFailure(AddCategoryFailure value),
    @required TResult removeCategoryFailure(RemoveCategoryFailure value),
    @required TResult editCategoryFailure(EditCategoryFailure value),
  }) {
    assert(getCategoryFailure != null);
    assert(addCategoryFailure != null);
    assert(removeCategoryFailure != null);
    assert(editCategoryFailure != null);
    return removeCategoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getCategoryFailure(GetCategoryFailure value),
    TResult addCategoryFailure(AddCategoryFailure value),
    TResult removeCategoryFailure(RemoveCategoryFailure value),
    TResult editCategoryFailure(EditCategoryFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeCategoryFailure != null) {
      return removeCategoryFailure(this);
    }
    return orElse();
  }
}

abstract class RemoveCategoryFailure implements CategoryFailure {
  const factory RemoveCategoryFailure({String description}) =
      _$RemoveCategoryFailure;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $RemoveCategoryFailureCopyWith<RemoveCategoryFailure> get copyWith;
}

/// @nodoc
abstract class $EditCategoryFailureCopyWith<$Res>
    implements $CategoryFailureCopyWith<$Res> {
  factory $EditCategoryFailureCopyWith(
          EditCategoryFailure value, $Res Function(EditCategoryFailure) then) =
      _$EditCategoryFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$EditCategoryFailureCopyWithImpl<$Res>
    extends _$CategoryFailureCopyWithImpl<$Res>
    implements $EditCategoryFailureCopyWith<$Res> {
  _$EditCategoryFailureCopyWithImpl(
      EditCategoryFailure _value, $Res Function(EditCategoryFailure) _then)
      : super(_value, (v) => _then(v as EditCategoryFailure));

  @override
  EditCategoryFailure get _value => super._value as EditCategoryFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(EditCategoryFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$EditCategoryFailure implements EditCategoryFailure {
  const _$EditCategoryFailure({this.description = 'Error editing category'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error editing category')
  @override
  final String description;

  @override
  String toString() {
    return 'CategoryFailure.editCategoryFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditCategoryFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $EditCategoryFailureCopyWith<EditCategoryFailure> get copyWith =>
      _$EditCategoryFailureCopyWithImpl<EditCategoryFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getCategoryFailure(String description),
    @required TResult addCategoryFailure(String description),
    @required TResult removeCategoryFailure(String description),
    @required TResult editCategoryFailure(String description),
  }) {
    assert(getCategoryFailure != null);
    assert(addCategoryFailure != null);
    assert(removeCategoryFailure != null);
    assert(editCategoryFailure != null);
    return editCategoryFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getCategoryFailure(String description),
    TResult addCategoryFailure(String description),
    TResult removeCategoryFailure(String description),
    TResult editCategoryFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editCategoryFailure != null) {
      return editCategoryFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getCategoryFailure(GetCategoryFailure value),
    @required TResult addCategoryFailure(AddCategoryFailure value),
    @required TResult removeCategoryFailure(RemoveCategoryFailure value),
    @required TResult editCategoryFailure(EditCategoryFailure value),
  }) {
    assert(getCategoryFailure != null);
    assert(addCategoryFailure != null);
    assert(removeCategoryFailure != null);
    assert(editCategoryFailure != null);
    return editCategoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getCategoryFailure(GetCategoryFailure value),
    TResult addCategoryFailure(AddCategoryFailure value),
    TResult removeCategoryFailure(RemoveCategoryFailure value),
    TResult editCategoryFailure(EditCategoryFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editCategoryFailure != null) {
      return editCategoryFailure(this);
    }
    return orElse();
  }
}

abstract class EditCategoryFailure implements CategoryFailure {
  const factory EditCategoryFailure({String description}) =
      _$EditCategoryFailure;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $EditCategoryFailureCopyWith<EditCategoryFailure> get copyWith;
}
