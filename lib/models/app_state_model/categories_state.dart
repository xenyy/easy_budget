import 'package:easy_budget/models/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_state.freezed.dart';

@freezed
abstract class Categories with _$Categories {
  const factory Categories.data(
      List<Category> categories,
      ) = CategoriesList;
  const factory Categories.loading() = CategoriesLoading;
  const factory Categories.onError(Object error, StackTrace st) = CategoriesError;
}