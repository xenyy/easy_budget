import 'package:easy_budget/data/app_db.dart';
import 'package:easy_budget/data/data_store.dart';
import 'package:easy_budget/data/exceptions.dart';
import 'package:easy_budget/models/category.dart';
import 'package:easy_budget/models/expense.dart';
import 'package:sembast/sembast.dart';

const List<Category> defaultCategories = [
  Category(id: '1', name: 'food'),
  Category(id: '2', name: 'treats'),
  Category(id: '3', name: 'clothes'),
  Category(id: '4', name: 'entertainment'),
];

class AppDataStore implements DataStore {
  static const String EXPENSES_STORE_NAME = 'expenses';
  static const String CATEGORIES_STORE_NAME = 'categories';

  final _expensesStore = intMapStoreFactory.store(EXPENSES_STORE_NAME);
  final _categoriesStore = intMapStoreFactory.store(CATEGORIES_STORE_NAME);

  Future<Database> get _db async => await AppDatabase.instance.database;

  Future<List<Expense>> getAllExpenses() async {
    try {
      final sortDate = Finder(sortOrders: [SortOrder('date', false)]);
      final expensesList = await _expensesStore.find(await _db, finder: sortDate);

      if (expensesList.isNotEmpty) {
        return expensesList.map((item) {
          final expense = Expense.fromJson(item.value);

          return expense;
        }).toList();
      } else {
        return [];
      }
    } catch (e) {
      throw ExpenseException(failure: const ExpensesFailure.getExpenseFailure());
    }
  }

  Future<void> addExpense(Expense expense) async {
    try {
      await _expensesStore.add(
          await _db,
          Expense.create(expense.title, expense.description, expense.import, expense.date, expense.categories)
              .toJson());
    } catch (e) {
      throw ExpenseException(failure: const ExpensesFailure.addExpenseFailure());
    }
  }

  Future<void> updateExpense(String id, String title, String description, double import, DateTime date) async {
    try {
      final expense = Expense(id: id, title: title, description: description, import: import, date: date);
      final findExpenseUpdate = Finder(filter: Filter.equal('id', expense.id));
      await _expensesStore.update(await _db, expense.toJson(), finder: findExpenseUpdate);
    } catch (e) {
      throw ExpenseException(failure: const ExpensesFailure.editExpenseFailure());
    }
  }

  Future<void> deleteExpense(Expense expense) async {
    try {
      final findExpenseDelete = Finder(filter: Filter.equal('id', expense.id));
      await _expensesStore.delete(await _db, finder: findExpenseDelete);

      //final expensesList = await _expensesStore.find(await _db);
      //print(expensesList.length.toString() + 'from after delete');
    } catch (e) {
      throw ExpenseException(failure: const ExpensesFailure.removeExpenseFailure());
    }
  }

  Future<List<Category>> getAllCategories() async {
    try {
      final categoryList = await _categoriesStore.find(await _db);

      if (categoryList.isEmpty) {
        _categoriesStore.addAll(await _db, defaultCategories.map((e) => e.toJson()).toList());
      }

      if (categoryList.isNotEmpty) {
        return categoryList.map((item) {
          final category = Category.fromJson(item.value);
          return category;
        }).toList();
      } else {
        return [...defaultCategories];
      }
    } catch (e) {
      throw CategoryException(failure: const CategoryFailure.getCategoryFailure());
    }
  }

  Future<void> addCategory(Category category) async {
    try {
      await _categoriesStore.add(await _db, Category.create(category.name).toJson());
    } catch (e) {
      throw CategoryException(failure: const CategoryFailure.addCategoryFailure());
    }
  }

  Future<void> updateCategory(Category category) async {}

  Future<void> deleteCategory(Category category) async {
    try {
      final findCategoryDelete = Finder(filter: Filter.equal('id', category.id));
      await _categoriesStore.delete(await _db, finder: findCategoryDelete);
    } catch (e) {
      throw CategoryException(failure: const CategoryFailure.removeCategoryFailure());
    }
  }

//Future<void> addLimit() async {}
  //Future<void> updateLimit() async {}
  //Future<void> deleteLimit() async {}

}
