import 'package:easy_budget/data/exceptions.dart';
import 'package:easy_budget/models/app_state_model/categories_state.dart';
import 'package:easy_budget/state/app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesStateNotifier extends StateNotifier<Categories> {
  CategoriesStateNotifier(this.read) : super(Categories.loading()) {
    _getAllCategories();
  }

  final Reader read;

  Future<void> _getAllCategories() async {
    try {
      final categories = await read(repositoryProvider).getAllCategories();
      state = Categories.data(categories);
    } on CategoryException catch (e, st) {
      state = Categories.onError(e, st);
    }

  }

}