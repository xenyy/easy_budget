import 'package:easy_budget/app/app_common_widgets/back_button.dart';
import 'package:easy_budget/app/home/home.dart';
import 'package:easy_budget/models/category.dart';
import 'package:easy_budget/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

class DashboardScreen extends StatefulWidget {
  static const String routeName = '/dashboard';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    double _totalAmount;
    double _amountPerCat;

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        brightness: Brightness.dark,
        leading: LeadingBackButton(),
      ),
      body: Consumer(
        builder: (context, watch, child) {
          final expensesState = watch(expensesNotifierProvider.state);
          final categoriesState = watch(categoriesNotifierProvider.state);
          return categoriesState.when(
            data: (categories) {
              return ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: [
                  ...categories.map(
                    (category) => Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.symmetric(
                        vertical: height * 0.01,
                        horizontal: width * 0.04,
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: height * 0.02,
                        horizontal: width * 0.04,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            category.name.toUpperCase(),
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          expensesState.maybeWhen(
                            data: (expenses) {
                              expenses.isNotEmpty
                                  ? _totalAmount = expenses.map((e) => e.import).reduce((a, b) => a + b)
                                  : _totalAmount = 0;
                              expenses.isNotEmpty ? _amountPerCat = expenses
                                  .map((e) => e)
                                  ?.where((x) => x?.categories?.map((e) => Category.fromJson(e)?.id)?.contains(category?.id))
                                  ?.map((e) => e.import)?.fold(0, (a, b) => a+b) //fold handles if null not like reduce
                              : _amountPerCat = 0;
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: height * 0.01),
                                  Text(
                                    formatCurrency(_amountPerCat) + ' €',
                                    style: Theme.of(context).textTheme.bodyText2,
                                  ),
                                  SizedBox(height: height * 0.01),
                                  LinearProgressIndicator(
                                    value: _totalAmount != 0 ? _amountPerCat / _totalAmount : 0,
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                                  ),
                                ],
                              );
                            },
                            orElse: () => Container(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            loading: () => LoadingIndicator(),
            onError: (e, st) => Container(),
          );
        },
      ),
    );
  }
}
