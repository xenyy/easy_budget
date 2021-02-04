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
  }) = _Expense;

  factory Expense.create(String title, String description, double import) {
    return Expense(
      id: _uuid.v4(),
      title: title,
      description: description,
      import: import,
    );
  }

  factory Expense.fromJson(Map<String, dynamic> json) => _$ExpenseFromJson(json);
}