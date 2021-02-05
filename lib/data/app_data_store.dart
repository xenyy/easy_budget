import 'package:easy_budget/data/app_db.dart';
import 'package:easy_budget/data/data_store.dart';
import 'package:easy_budget/data/exceptions.dart';
import 'package:easy_budget/models/expense.dart';
import 'package:sembast/sembast.dart';

class AppDataStore implements DataStore {
  static const String EXPENSES_STORE_NAME = 'expenses';
  //static const String LIMIT_STORE_NAME = 'limit';

  final _expensesStore = intMapStoreFactory.store(EXPENSES_STORE_NAME);
  //final _limitStore = intMapStoreFactory.store(LIMIT_STORE_NAME);

  Future<Database> get _db async => await AppDatabase.instance.database;

  Future<List<Expense>> getAllExpenses() async {
    try {
      //final sort = Finder(sortOrders: [SortOrder('title')]);
      final expensesList = await _expensesStore.find(await _db);

      if (expensesList.isNotEmpty) {
        return expensesList.map((item) {
          final expense = Expense.fromJson(item.value);

          return expense;
        }).toList();
      } else {
        return [];
      }
    } catch (e) {
      throw ExpenseException(failure: const ExpensesFailure.getFailure());
    }
  }

  Future<void> addExpense(Expense expense) async {
    try {
      await _expensesStore.add(
          await _db, Expense.create(expense.title, expense.description, expense.import, expense.date).toJson());
    } catch (e) {
      throw ExpenseException(failure: const ExpensesFailure.addFailure());
    }
  }

  Future<void> updateExpense(String id, String title, String description, double import, DateTime date) async {
    try {
      final expense = Expense(id: id, title: title, description: description, import: import, date: date);
      final findExpenseUpdate = Finder(filter: Filter.equal('id', expense.id));
      await _expensesStore.update(await _db, expense.toJson(), finder: findExpenseUpdate);
    } catch (e) {
      print(e);
      throw ExpenseException(failure: const ExpensesFailure.editFailure());
    }
  }

  Future<void> deleteExpense(Expense expense) async {
    try {
      final findExpenseDelete = Finder(filter: Filter.equal('id', expense.id));
      await _expensesStore.delete(await _db, finder: findExpenseDelete);

      //final expensesList = await _expensesStore.find(await _db);
      //print(expensesList.length.toString() + 'from after delete');
    } catch (e) {
      throw ExpenseException(failure: const ExpensesFailure.removeFailure());
    }
  }

  //Future<void> addLimit() async {}
  //Future<void> updateLimit() async {}
  //Future<void> deleteLimit() async {}

}
