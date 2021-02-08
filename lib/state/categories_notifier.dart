import 'package:easy_budget/data/exceptions.dart';
import 'package:easy_budget/models/app_state_model/categories_state.dart';
import 'package:easy_budget/models/category.dart';
import 'package:easy_budget/state/app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesStateNotifier extends StateNotifier<Categories> {
  CategoriesStateNotifier(this.read) : super(Categories.loading()) {
    _getAllCategories();
  }

  final Reader read;
  Categories previousState;

  Future<void> _getAllCategories() async {
    try {
      final categories = await read(repositoryProvider).getAllCategories();
      state = Categories.data(categories);
    } on CategoryException catch (e, st) {
      state = Categories.onError(e, st);
    }
  }

  Future<void> retryGettingList() async {
    state = const Categories.loading();
    try {
      final categories = await read(repositoryProvider).getAllCategories();
      state = Categories.data(categories);
    } on CategoryException catch (e, st) {
      state = Categories.onError(e, st);
    }
  }

  Future<void> refresh() async {
    try {
      final categories = await read(repositoryProvider).getAllCategories();
      state = Categories.data(categories);
    } on CategoryException catch (e, st) {
      state = Categories.onError(e, st);
    }
  }

  Future<void> createCategory(String name) async {
    _cacheState();

    state.maybeWhen(
      data: (category) {
        state = Categories.data(
          category
            ..add(
              Category.create(name),
            ),
        );
      },
      orElse: () {},
    );

    try {
      await read(repositoryProvider).addCategory(
        Category(name: name),
      );
    } on CategoryException catch (e) {
      print(e);
      _handleException(e);
    }
    refresh(); //so when you delete the item doesnt reappear when pull to refresh
  }

  Future<void> removeCategory(Category category) async {
    _cacheState();
    state.maybeWhen(
      data: (categories) {
        state = Categories.data(categories.where((item) => item.id != category.id).toList());
      },
      orElse: () {},
    );
    try {
      await read(repositoryProvider).deleteCategory(category);
    } on CategoryException catch (e) {
      print(e);
      _handleException(e);
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

  void _handleException(CategoryException e) {
    _resetState();
    read(exceptionCategoriesProvider).state = e;
  }
}
