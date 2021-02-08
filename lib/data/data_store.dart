import 'package:easy_budget/models/category.dart';
import 'package:easy_budget/models/expense.dart';

abstract class DataStore {
  //Expenses
  Future<List<Expense>> getAllExpenses();
  Future<void> addExpense(Expense expense);
  Future<void> updateExpense(String id,String title, String description, double import, DateTime date);
  Future<void> deleteExpense(Expense expense);

  Future<List<Category>> getAllCategories();
  Future<void> addCategory (Category category);
  Future<void> updateCategory (Category category);
  Future<void> deleteCategory (Category category);

}