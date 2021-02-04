import 'package:easy_budget/app/app_common_widgets/back_button.dart';
import 'package:easy_budget/app/home/home.dart';
import 'package:easy_budget/models/expense.dart';
import 'package:easy_budget/routing/app_router.dart';
import 'package:easy_budget/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = '/details';

  final Expense expense;
  const DetailsScreen({Key key, this.expense}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        leading: LeadingBackButton(),
        title: Text('Expense Details', style: Theme.of(context).appBarTheme.textTheme.headline6),
        actions: [
          IconButton(
            splashRadius: 25,
            icon: Icon(
              Icons.edit_rounded,
              color: Colors.white70,
            ),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.edit,arguments: expense);
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: height * 0.03,
          horizontal: width * 0.05,
        ),
        child: Consumer(
          builder: (context, watch, child) {
            final totalExpenses = watch(expensesNotifierProvider.state);
            return totalExpenses.when(
              data: (expenses) {
                return ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ...expenses.where((element) => element.id == expense.id).map(
                      (item) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(item.id),
                            SizedBox(height: height * 0.02),
                            Text(
                              item.title.toUpperCase(),
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(height: height * 0.02),
                            Text(
                              item.description.trim(),
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            SizedBox(height: height * 0.02),
                            Text('Import: '),
                            SizedBox(height: height * 0.02),
                            Text(
                              formatCurrency(item.import) + ' €',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                );
              },
              loading: () => LoadingIndicator(),
              onError: (e, st) {
                return buildRetryError(context);
              },
            );
          },
        ),
      ),
    );
  }

  Widget buildRetryError(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Expenses could not be loaded',
          ),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text('Retry'),
            splashColor: Colors.black12,
            color: Colors.black87,
            onPressed: () {
              context.read(expensesNotifierProvider).retryGettingList();
            },
          ),
        ],
      ),
    );
  }
}
