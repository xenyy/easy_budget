import 'package:easy_budget/data/app_data_store.dart';
import 'package:easy_budget/data/data_store.dart';
import 'package:easy_budget/data/exceptions.dart';
import 'package:easy_budget/state/categories_notifier.dart';
import 'package:easy_budget/state/expenses_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dataStoreProvider = Provider<DataStore>((ref) => throw UnimplementedError());

final repositoryProvider = Provider<AppDataStore>((ref) {
  return AppDataStore();
});

final expensesNotifierProvider = StateNotifierProvider<ExpensesStateNotifier>((ref) {
  return ExpensesStateNotifier(ref.read);
});

final categoriesNotifierProvider = StateNotifierProvider<CategoriesStateNotifier>((ref) {
  return CategoriesStateNotifier(ref.read);
});

final exceptionExpensesProvider = StateProvider<ExpenseException>((ref) {
  return null;
});


