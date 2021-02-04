import 'package:easy_budget/models/expense.dart';

abstract class DataStore {
  Future<List<Expense>> getAllExpenses();
  Future<void> addExpense(Expense expense);
  Future<void> updateExpense(String id,String title, String description, double import);
  Future<void> deleteExpense(Expense expense);

}