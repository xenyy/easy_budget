// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Expense _$ExpenseFromJson(Map<String, dynamic> json) {
  return _Expense.fromJson(json);
}

/// @nodoc
class _$ExpenseTearOff {
  const _$ExpenseTearOff();

// ignore: unused_element
  _Expense call(
      {String id,
      @required String title,
      @required String description,
      @required double import,
      @required DateTime date,
      Category category}) {
    return _Expense(
      id: id,
      title: title,
      description: description,
      import: import,
      date: date,
      category: category,
    );
  }

// ignore: unused_element
  Expense fromJson(Map<String, Object> json) {
    return Expense.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Expense = _$ExpenseTearOff();

/// @nodoc
mixin _$Expense {
  String get id;
  String get title;
  String get description;
  double get import;
  DateTime get date;
  Category get category;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ExpenseCopyWith<Expense> get copyWith;
}

/// @nodoc
abstract class $ExpenseCopyWith<$Res> {
  factory $ExpenseCopyWith(Expense value, $Res Function(Expense) then) =
      _$ExpenseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      double import,
      DateTime date,
      Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$ExpenseCopyWithImpl<$Res> implements $ExpenseCopyWith<$Res> {
  _$ExpenseCopyWithImpl(this._value, this._then);

  final Expense _value;
  // ignore: unused_field
  final $Res Function(Expense) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object import = freezed,
    Object date = freezed,
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      import: import == freezed ? _value.import : import as double,
      date: date == freezed ? _value.date : date as DateTime,
      category: category == freezed ? _value.category : category as Category,
    ));
  }

  @override
  $CategoryCopyWith<$Res> get category {
    if (_value.category == null) {
      return null;
    }
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$ExpenseCopyWith<$Res> implements $ExpenseCopyWith<$Res> {
  factory _$ExpenseCopyWith(_Expense value, $Res Function(_Expense) then) =
      __$ExpenseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      double import,
      DateTime date,
      Category category});

  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$ExpenseCopyWithImpl<$Res> extends _$ExpenseCopyWithImpl<$Res>
    implements _$ExpenseCopyWith<$Res> {
  __$ExpenseCopyWithImpl(_Expense _value, $Res Function(_Expense) _then)
      : super(_value, (v) => _then(v as _Expense));

  @override
  _Expense get _value => super._value as _Expense;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object import = freezed,
    Object date = freezed,
    Object category = freezed,
  }) {
    return _then(_Expense(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      import: import == freezed ? _value.import : import as double,
      date: date == freezed ? _value.date : date as DateTime,
      category: category == freezed ? _value.category : category as Category,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Expense implements _Expense {
  const _$_Expense(
      {this.id,
      @required this.title,
      @required this.description,
      @required this.import,
      @required this.date,
      this.category})
      : assert(title != null),
        assert(description != null),
        assert(import != null),
        assert(date != null);

  factory _$_Expense.fromJson(Map<String, dynamic> json) =>
      _$_$_ExpenseFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final double import;
  @override
  final DateTime date;
  @override
  final Category category;

  @override
  String toString() {
    return 'Expense(id: $id, title: $title, description: $description, import: $import, date: $date, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Expense &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.import, import) ||
                const DeepCollectionEquality().equals(other.import, import)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(import) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$ExpenseCopyWith<_Expense> get copyWith =>
      __$ExpenseCopyWithImpl<_Expense>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExpenseToJson(this);
  }
}

abstract class _Expense implements Expense {
  const factory _Expense(
      {String id,
      @required String title,
      @required String description,
      @required double import,
      @required DateTime date,
      Category category}) = _$_Expense;

  factory _Expense.fromJson(Map<String, dynamic> json) = _$_Expense.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  double get import;
  @override
  DateTime get date;
  @override
  Category get category;
  @override
  @JsonKey(ignore: true)
  _$ExpenseCopyWith<_Expense> get copyWith;
}
