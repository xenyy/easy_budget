// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'expenses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExpensesTearOff {
  const _$ExpensesTearOff();

// ignore: unused_element
  ExpensesList data(List<Expense> expenses) {
    return ExpensesList(
      expenses,
    );
  }

// ignore: unused_element
  ExpensesLoading loading() {
    return const ExpensesLoading();
  }

// ignore: unused_element
  ExpensesError onError(Object error, StackTrace st) {
    return ExpensesError(
      error,
      st,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Expenses = _$ExpensesTearOff();

/// @nodoc
mixin _$Expenses {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<Expense> expenses),
    @required TResult loading(),
    @required TResult onError(Object error, StackTrace st),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<Expense> expenses),
    TResult loading(),
    TResult onError(Object error, StackTrace st),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(ExpensesList value),
    @required TResult loading(ExpensesLoading value),
    @required TResult onError(ExpensesError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(ExpensesList value),
    TResult loading(ExpensesLoading value),
    TResult onError(ExpensesError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ExpensesCopyWith<$Res> {
  factory $ExpensesCopyWith(Expenses value, $Res Function(Expenses) then) =
      _$ExpensesCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExpensesCopyWithImpl<$Res> implements $ExpensesCopyWith<$Res> {
  _$ExpensesCopyWithImpl(this._value, this._then);

  final Expenses _value;
  // ignore: unused_field
  final $Res Function(Expenses) _then;
}

/// @nodoc
abstract class $ExpensesListCopyWith<$Res> {
  factory $ExpensesListCopyWith(
          ExpensesList value, $Res Function(ExpensesList) then) =
      _$ExpensesListCopyWithImpl<$Res>;
  $Res call({List<Expense> expenses});
}

/// @nodoc
class _$ExpensesListCopyWithImpl<$Res> extends _$ExpensesCopyWithImpl<$Res>
    implements $ExpensesListCopyWith<$Res> {
  _$ExpensesListCopyWithImpl(
      ExpensesList _value, $Res Function(ExpensesList) _then)
      : super(_value, (v) => _then(v as ExpensesList));

  @override
  ExpensesList get _value => super._value as ExpensesList;

  @override
  $Res call({
    Object expenses = freezed,
  }) {
    return _then(ExpensesList(
      expenses == freezed ? _value.expenses : expenses as List<Expense>,
    ));
  }
}

/// @nodoc
class _$ExpensesList implements ExpensesList {
  const _$ExpensesList(this.expenses) : assert(expenses != null);

  @override
  final List<Expense> expenses;

  @override
  String toString() {
    return 'Expenses.data(expenses: $expenses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExpensesList &&
            (identical(other.expenses, expenses) ||
                const DeepCollectionEquality()
                    .equals(other.expenses, expenses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(expenses);

  @JsonKey(ignore: true)
  @override
  $ExpensesListCopyWith<ExpensesList> get copyWith =>
      _$ExpensesListCopyWithImpl<ExpensesList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<Expense> expenses),
    @required TResult loading(),
    @required TResult onError(Object error, StackTrace st),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return data(expenses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<Expense> expenses),
    TResult loading(),
    TResult onError(Object error, StackTrace st),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(expenses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(ExpensesList value),
    @required TResult loading(ExpensesLoading value),
    @required TResult onError(ExpensesError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(ExpensesList value),
    TResult loading(ExpensesLoading value),
    TResult onError(ExpensesError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ExpensesList implements Expenses {
  const factory ExpensesList(List<Expense> expenses) = _$ExpensesList;

  List<Expense> get expenses;
  @JsonKey(ignore: true)
  $ExpensesListCopyWith<ExpensesList> get copyWith;
}

/// @nodoc
abstract class $ExpensesLoadingCopyWith<$Res> {
  factory $ExpensesLoadingCopyWith(
          ExpensesLoading value, $Res Function(ExpensesLoading) then) =
      _$ExpensesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExpensesLoadingCopyWithImpl<$Res> extends _$ExpensesCopyWithImpl<$Res>
    implements $ExpensesLoadingCopyWith<$Res> {
  _$ExpensesLoadingCopyWithImpl(
      ExpensesLoading _value, $Res Function(ExpensesLoading) _then)
      : super(_value, (v) => _then(v as ExpensesLoading));

  @override
  ExpensesLoading get _value => super._value as ExpensesLoading;
}

/// @nodoc
class _$ExpensesLoading implements ExpensesLoading {
  const _$ExpensesLoading();

  @override
  String toString() {
    return 'Expenses.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ExpensesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<Expense> expenses),
    @required TResult loading(),
    @required TResult onError(Object error, StackTrace st),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<Expense> expenses),
    TResult loading(),
    TResult onError(Object error, StackTrace st),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(ExpensesList value),
    @required TResult loading(ExpensesLoading value),
    @required TResult onError(ExpensesError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(ExpensesList value),
    TResult loading(ExpensesLoading value),
    TResult onError(ExpensesError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExpensesLoading implements Expenses {
  const factory ExpensesLoading() = _$ExpensesLoading;
}

/// @nodoc
abstract class $ExpensesErrorCopyWith<$Res> {
  factory $ExpensesErrorCopyWith(
          ExpensesError value, $Res Function(ExpensesError) then) =
      _$ExpensesErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace st});
}

/// @nodoc
class _$ExpensesErrorCopyWithImpl<$Res> extends _$ExpensesCopyWithImpl<$Res>
    implements $ExpensesErrorCopyWith<$Res> {
  _$ExpensesErrorCopyWithImpl(
      ExpensesError _value, $Res Function(ExpensesError) _then)
      : super(_value, (v) => _then(v as ExpensesError));

  @override
  ExpensesError get _value => super._value as ExpensesError;

  @override
  $Res call({
    Object error = freezed,
    Object st = freezed,
  }) {
    return _then(ExpensesError(
      error == freezed ? _value.error : error,
      st == freezed ? _value.st : st as StackTrace,
    ));
  }
}

/// @nodoc
class _$ExpensesError implements ExpensesError {
  const _$ExpensesError(this.error, this.st)
      : assert(error != null),
        assert(st != null);

  @override
  final Object error;
  @override
  final StackTrace st;

  @override
  String toString() {
    return 'Expenses.onError(error: $error, st: $st)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExpensesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.st, st) ||
                const DeepCollectionEquality().equals(other.st, st)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(st);

  @JsonKey(ignore: true)
  @override
  $ExpensesErrorCopyWith<ExpensesError> get copyWith =>
      _$ExpensesErrorCopyWithImpl<ExpensesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<Expense> expenses),
    @required TResult loading(),
    @required TResult onError(Object error, StackTrace st),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return onError(error, st);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<Expense> expenses),
    TResult loading(),
    TResult onError(Object error, StackTrace st),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onError != null) {
      return onError(error, st);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(ExpensesList value),
    @required TResult loading(ExpensesLoading value),
    @required TResult onError(ExpensesError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(ExpensesList value),
    TResult loading(ExpensesLoading value),
    TResult onError(ExpensesError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class ExpensesError implements Expenses {
  const factory ExpensesError(Object error, StackTrace st) = _$ExpensesError;

  Object get error;
  StackTrace get st;
  @JsonKey(ignore: true)
  $ExpensesErrorCopyWith<ExpensesError> get copyWith;
}
