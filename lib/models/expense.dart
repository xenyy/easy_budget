import 'package:easy_budget/models/category.dart';
import 'package:uuid/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense.freezed.dart';
part 'expense.g.dart';

var _uuid = Uuid();

@freezed
abstract class Expense with _$Expense {
  const factory Expense({
    String id,
    @required String title,
    @required String description,
    @required double import,
    @required DateTime date,
    Category category,
  }) = _Expense;

  factory Expense.create(String title, String description, double import,DateTime date) {
    return Expense(
      id: _uuid.v4(),
      title: title,
      description: description,
      import: import,
      date : date,
    );
  }

  factory Expense.fromJson(Map<String, dynamic> json) => _$ExpenseFromJson(json);
}