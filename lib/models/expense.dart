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
    @Default([]) List<dynamic> categories,
  }) = _Expense;

  factory Expense.create(String title, String description, double import,DateTime date,List<dynamic> categories) {
    return Expense(
      id: _uuid.v4(),
      title: title,
      description: description,
      import: import,
      date : date,
      categories: categories.map((cat) => cat.toJson()).toList(),
    );
  }

  factory Expense.fromJson(Map<String, dynamic> json) => _$ExpenseFromJson(json);
}