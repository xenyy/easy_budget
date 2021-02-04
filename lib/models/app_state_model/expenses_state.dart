import 'package:easy_budget/models/expense.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expenses_state.freezed.dart';

@freezed
abstract class Expenses with _$Expenses {
  const factory Expenses.data(
      List<Expense> expenses,
      ) = ExpensesList;
  const factory Expenses.loading() = ExpensesLoading;
  const factory Expenses.onError(Object error, StackTrace st) = ExpensesError;
}