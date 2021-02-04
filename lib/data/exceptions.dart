import 'package:freezed_annotation/freezed_annotation.dart';
part 'exceptions.freezed.dart';

@freezed
abstract class ExpensesFailure with _$ExpensesFailure {
  const factory ExpensesFailure.getFailure({
    @Default('Error getting expenses') String description,
  }) = GetExpensesFailure;
  const factory ExpensesFailure.addFailure({
    @Default('Error adding expense') String description,
  }) = AddExpenseFailure;
  const factory ExpensesFailure.removeFailure({
    @Default('Error removing expense') String description,
  }) = RemoveExpenseFailure;
  const factory ExpensesFailure.editFailure({
    @Default('Error editing expense') String description,
  }) = EditExpenseFailure;
}

class ExpenseException implements Exception {
  ExpenseException({@required this.failure});

  final ExpensesFailure failure;

  @override
  String toString() {
    return '''
Todo Error: ${failure?.toString()}
    ''';
  }
}