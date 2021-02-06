// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CategoriesTearOff {
  const _$CategoriesTearOff();

// ignore: unused_element
  CategoriesList data(List<Category> categories) {
    return CategoriesList(
      categories,
    );
  }

// ignore: unused_element
  CategoriesLoading loading() {
    return const CategoriesLoading();
  }

// ignore: unused_element
  CategoriesError onError(Object error, StackTrace st) {
    return CategoriesError(
      error,
      st,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Categories = _$CategoriesTearOff();

/// @nodoc
mixin _$Categories {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<Category> categories),
    @required TResult loading(),
    @required TResult onError(Object error, StackTrace st),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<Category> categories),
    TResult loading(),
    TResult onError(Object error, StackTrace st),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(CategoriesList value),
    @required TResult loading(CategoriesLoading value),
    @required TResult onError(CategoriesError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(CategoriesList value),
    TResult loading(CategoriesLoading value),
    TResult onError(CategoriesError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CategoriesCopyWith<$Res> {
  factory $CategoriesCopyWith(
          Categories value, $Res Function(Categories) then) =
      _$CategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesCopyWithImpl<$Res> implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(this._value, this._then);

  final Categories _value;
  // ignore: unused_field
  final $Res Function(Categories) _then;
}

/// @nodoc
abstract class $CategoriesListCopyWith<$Res> {
  factory $CategoriesListCopyWith(
          CategoriesList value, $Res Function(CategoriesList) then) =
      _$CategoriesListCopyWithImpl<$Res>;
  $Res call({List<Category> categories});
}

/// @nodoc
class _$CategoriesListCopyWithImpl<$Res> extends _$CategoriesCopyWithImpl<$Res>
    implements $CategoriesListCopyWith<$Res> {
  _$CategoriesListCopyWithImpl(
      CategoriesList _value, $Res Function(CategoriesList) _then)
      : super(_value, (v) => _then(v as CategoriesList));

  @override
  CategoriesList get _value => super._value as CategoriesList;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(CategoriesList(
      categories == freezed ? _value.categories : categories as List<Category>,
    ));
  }
}

/// @nodoc
class _$CategoriesList implements CategoriesList {
  const _$CategoriesList(this.categories) : assert(categories != null);

  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'Categories.data(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoriesList &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  $CategoriesListCopyWith<CategoriesList> get copyWith =>
      _$CategoriesListCopyWithImpl<CategoriesList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<Category> categories),
    @required TResult loading(),
    @required TResult onError(Object error, StackTrace st),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return data(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<Category> categories),
    TResult loading(),
    TResult onError(Object error, StackTrace st),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(CategoriesList value),
    @required TResult loading(CategoriesLoading value),
    @required TResult onError(CategoriesError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(CategoriesList value),
    TResult loading(CategoriesLoading value),
    TResult onError(CategoriesError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class CategoriesList implements Categories {
  const factory CategoriesList(List<Category> categories) = _$CategoriesList;

  List<Category> get categories;
  @JsonKey(ignore: true)
  $CategoriesListCopyWith<CategoriesList> get copyWith;
}

/// @nodoc
abstract class $CategoriesLoadingCopyWith<$Res> {
  factory $CategoriesLoadingCopyWith(
          CategoriesLoading value, $Res Function(CategoriesLoading) then) =
      _$CategoriesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesLoadingCopyWithImpl<$Res>
    extends _$CategoriesCopyWithImpl<$Res>
    implements $CategoriesLoadingCopyWith<$Res> {
  _$CategoriesLoadingCopyWithImpl(
      CategoriesLoading _value, $Res Function(CategoriesLoading) _then)
      : super(_value, (v) => _then(v as CategoriesLoading));

  @override
  CategoriesLoading get _value => super._value as CategoriesLoading;
}

/// @nodoc
class _$CategoriesLoading implements CategoriesLoading {
  const _$CategoriesLoading();

  @override
  String toString() {
    return 'Categories.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CategoriesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<Category> categories),
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
    TResult data(List<Category> categories),
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
    @required TResult data(CategoriesList value),
    @required TResult loading(CategoriesLoading value),
    @required TResult onError(CategoriesError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(CategoriesList value),
    TResult loading(CategoriesLoading value),
    TResult onError(CategoriesError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoading implements Categories {
  const factory CategoriesLoading() = _$CategoriesLoading;
}

/// @nodoc
abstract class $CategoriesErrorCopyWith<$Res> {
  factory $CategoriesErrorCopyWith(
          CategoriesError value, $Res Function(CategoriesError) then) =
      _$CategoriesErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace st});
}

/// @nodoc
class _$CategoriesErrorCopyWithImpl<$Res> extends _$CategoriesCopyWithImpl<$Res>
    implements $CategoriesErrorCopyWith<$Res> {
  _$CategoriesErrorCopyWithImpl(
      CategoriesError _value, $Res Function(CategoriesError) _then)
      : super(_value, (v) => _then(v as CategoriesError));

  @override
  CategoriesError get _value => super._value as CategoriesError;

  @override
  $Res call({
    Object error = freezed,
    Object st = freezed,
  }) {
    return _then(CategoriesError(
      error == freezed ? _value.error : error,
      st == freezed ? _value.st : st as StackTrace,
    ));
  }
}

/// @nodoc
class _$CategoriesError implements CategoriesError {
  const _$CategoriesError(this.error, this.st)
      : assert(error != null),
        assert(st != null);

  @override
  final Object error;
  @override
  final StackTrace st;

  @override
  String toString() {
    return 'Categories.onError(error: $error, st: $st)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoriesError &&
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
  $CategoriesErrorCopyWith<CategoriesError> get copyWith =>
      _$CategoriesErrorCopyWithImpl<CategoriesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<Category> categories),
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
    TResult data(List<Category> categories),
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
    @required TResult data(CategoriesList value),
    @required TResult loading(CategoriesLoading value),
    @required TResult onError(CategoriesError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(CategoriesList value),
    TResult loading(CategoriesLoading value),
    TResult onError(CategoriesError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class CategoriesError implements Categories {
  const factory CategoriesError(Object error, StackTrace st) =
      _$CategoriesError;

  Object get error;
  StackTrace get st;
  @JsonKey(ignore: true)
  $CategoriesErrorCopyWith<CategoriesError> get copyWith;
}
