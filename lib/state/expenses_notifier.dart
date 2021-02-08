import 'package:easy_budget/data/exceptions.dart';
import 'package:easy_budget/models/app_state_model/expenses_state.dart';
import 'package:easy_budget/models/expense.dart';
import 'package:easy_budget/state/app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExpensesStateNotifier extends StateNotifier<Expenses> {
  ExpensesStateNotifier(this.read) : super(Expenses.loading()) {
    _getAllExpenses();
  }
  final Reader read;
  Expenses previousState;

  Future<void> _getAllExpenses() async {
    //await Future.delayed(Duration(seconds: 2));
    try {
      final expenses = await read(repositoryProvider).getAllExpenses();
      state = Expenses.data(expenses);
    } on ExpenseException catch (e, st) {
      state = Expenses.onError(e, st);
    }
  }

  Future<void> retryGettingList() async {
    state = const Expenses.loading();
    try {
      final expenses = await read(repositoryProvider).getAllExpenses();
      state = Expenses.data(expenses);
    } on ExpenseException catch (e, st) {
      state = Expenses.onError(e, st);
    }
  }

  Future<void> refresh() async {
    try {
      final expenses = await read(repositoryProvider).getAllExpenses();
      state = Expenses.data(expenses);
    } on ExpenseException catch (e, st) {
      state = Expenses.onError(e, st);
    }
  }

  Future<void> createExpense(
      String title, String description, double import, DateTime date, List<dynamic> categories) async {
    _cacheState();

    state.maybeWhen(
      data: (expense) {
        state = Expenses.data(
          expense
            ..add(
              Expense.create(title, description, import, date, categories),
            ),
        );
      },
      orElse: () {},
    );

    try {
      await read(repositoryProvider).addExpense(
        Expense(
          id: null /*assign the id later*/,
          title: title,
          description: description,
          import: import,
          date: date,
          categories: categories,
        ),
      );
    } on ExpenseException catch (e) {
      print(e);
      return _handleException(e);
    }
    refresh(); //so when you delete the item doesnt reappear when pull to refresh
  }

  Future<void> editExpense(String id, String title, String description, double import, DateTime date) async {
    _cacheState();

    state.maybeWhen(
      data: (expenses) {
        state = Expenses.data(
          [
            for (final item in expenses)
              if (item.id == id)
                item.copyWith(title: title, description: description, import: import, date: date)
              else
                item
          ],
        );
      },
      orElse: () {},
    );

    try {
      await read(repositoryProvider).updateExpense(id, title, description, import, date);
    } on ExpenseException catch (e) {
      return _handleException(e);
    }
    refresh(); //so when you delete the item doesnt reappear when pull to refresh
  }

  Future<void> remove(Expense expense) async {
    _cacheState();
    state.maybeWhen(
      data: (expenses) {
        //retrive items where id not equals to expense id to remove
        state = Expenses.data(expenses.where((item) => item.id != expense.id).toList());
      },
      orElse: () {},
    );
    try {
      await read(repositoryProvider).deleteExpense(expense);
    } on ExpenseException catch (e) {
      return _handleException(e);
    }
  }

  void _cacheState() {
    previousState = state;
  }

  void _resetState() {
    if (previousState != null) {
      state = previousState;
      previousState = null;
    }
  }

  void _handleException(ExpenseException e) {
    _resetState();
    read(exceptionExpensesProvider).state = e;
  }
}
