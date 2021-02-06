import 'package:easy_budget/models/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'exceptions.freezed.dart';

@freezed
abstract class ExpensesFailure with _$ExpensesFailure {
  const factory ExpensesFailure.getExpenseFailure({
    @Default('Error getting expenses') String description,
  }) = GetExpensesFailure;
  const factory ExpensesFailure.addExpenseFailure({
    @Default('Error adding expense') String description,
  }) = AddExpenseFailure;
  const factory ExpensesFailure.removeExpenseFailure({
    @Default('Error removing expense') String description,
  }) = RemoveExpenseFailure;
  const factory ExpensesFailure.editExpenseFailure({
    @Default('Error editing expense') String description,
  }) = EditExpenseFailure;
}

class ExpenseException implements Exception {
  ExpenseException({@required this.failure});

  final ExpensesFailure failure;

  @override
  String toString() {
    return '''
Expense Error: ${failure?.toString()}
    ''';
  }
}

@freezed
abstract class CategoryFailure with _$CategoryFailure {
  const factory CategoryFailure.getCategoryFailure({
    @Default('Error getting category') String description,
  }) = GetCategoryFailure;
  const factory CategoryFailure.addCategoryFailure({
    @Default('Error adding category') String description,
  }) = AddCategoryFailure;
  const factory CategoryFailure.removeCategoryFailure({
    @Default('Error removing category') String description,
  }) = RemoveCategoryFailure;
  const factory CategoryFailure.editCategoryFailure({
    @Default('Error editing category') String description,
  }) = EditCategoryFailure;
}


class CategoryException implements Exception {
  CategoryException({@required this.failure});

  final CategoryFailure failure;

  @override
  String toString() {
    return '''
Category Error: ${failure?.toString()}
    ''';
  }
}