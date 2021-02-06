import 'package:another_flushbar/flushbar.dart';
import 'package:easy_budget/app_config/constant.dart';
import 'package:easy_budget/data/exceptions.dart';
import 'package:easy_budget/models/category.dart';
import 'package:easy_budget/models/expense.dart';
import 'package:easy_budget/routing/app_router.dart';
import 'package:easy_budget/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

final _currentItem = ScopedProvider<Expense>(null);

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  String _title, _description;
  double _import;
  DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: buildFloatingAddButton(context),
      drawer: Drawer(),
      body: ProviderListener(
        provider: exceptionExpensesProvider,
        onChange: (
          BuildContext context,
          StateController<ExpenseException> exception,
        ) {
          //Throw snackbar when any of the failures occur
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                exception.state.failure.description,
              ),
            ),
          );
        },
        child: NestedScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  brightness: Brightness.dark,
                  pinned: true,
                  stretch: true,
                  elevation: 0,
                  toolbarHeight: kToolbarHeight,
                  expandedHeight: kExpandedSliver,
                  iconTheme: IconThemeData(
                    color: Colors.white70,
                  ),
                  backgroundColor: Colors.black87,
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: IconButton(
                        splashRadius: 25,
                        icon: Icon(
                          Icons.dashboard_rounded,
                          color: Colors.white70,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.dashboard);
                        },
                      ),
                    ),
                  ],
                  flexibleSpace: buildFlexibleSpace(context, height),
                ),
              ),
            ];
          },
          body: Builder(
            builder: (BuildContext context) {
              final height = MediaQuery.of(context).size.height;
              final width = MediaQuery.of(context).size.width;
              return RefreshIndicator(
                color: Colors.black54,
                onRefresh: () async {
                  return context.read(expensesNotifierProvider).refresh();
                },
                displacement: height * 0.15,
                child: CustomScrollView(
                  slivers: [
                    SliverOverlapInjector(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                    ),
                    SliverToBoxAdapter(
                      child: buildExpensesList(height, width),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  FlexibleSpaceBar buildFlexibleSpace(BuildContext context, double height) {
    return FlexibleSpaceBar(
      background: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Total Expenses',
              style: TextStyle(
                color: Colors.white,
                fontSize: 27,
              ),
            ),
            SizedBox(height: height * 0.02),
            Consumer(
              builder: (context, watch, child) {
                final totalExpenses = watch(expensesNotifierProvider.state);
                return totalExpenses.maybeWhen(
                  data: (item) {
                    return item.isNotEmpty
                        ? Text(
                            formatCurrency(item.map((e) => e.import).reduce((a, b) => a + b)) + ' €',
                            style: Theme.of(context).textTheme.headline2,
                          )
                        : Text(
                            formatCurrency(0.00) + ' €',
                            style: Theme.of(context).textTheme.headline2,
                          );
                  },
                  orElse: () {
                    return Text(
                      formatCurrency(0.00) + ' €',
                      style: Theme.of(context).textTheme.headline2,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExpensesList(double height, double width) {
    return Consumer(
      builder: (context, watch, child) {
        final expensesState = watch(expensesNotifierProvider.state);
        return expensesState.when(
          data: (items) {
            return items.isNotEmpty
                ? GroupedListView<dynamic, DateTime>(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    elements: items,
                    groupBy: (items) {
                      return items.date;
                    },
                    groupSeparatorBuilder: (DateTime date) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: width * 0.03,
                          top: height * 0.02,
                          bottom: height * 0.01,
                        ),
                        child: Text(
                          DateFormat.yMd('es').format(date),
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                    order: GroupedListOrder.DESC,
                    itemBuilder: (context, dynamic item) => ProviderScope(
                      overrides: [_currentItem.overrideWithValue(item)],
                      child: const ExpenseTile(),
                    ),
                  )
                : Center(
                    heightFactor: height / 30,
                    child: Container(
                      child: Text('No expenses'),
                    ),
                  );
          },
          loading: () {
            return const LoadingIndicator();
          },
          onError: (e, st) {
            return buildRetryError(context);
          },
        );
      },
    );
  }

  FloatingActionButton buildFloatingAddButton(BuildContext context) {
    return FloatingActionButton.extended(
      icon: Icon(Icons.add),
      tooltip: 'add',
      label: Text('Add'),
      elevation: 0,
      highlightElevation: 0,
      foregroundColor: Colors.white,
      splashColor: Colors.black54,
      backgroundColor: Colors.black87,
      onPressed: () {
        _addExpenseBottomSheet(context);
      },
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

  void _addExpenseBottomSheet(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    TextEditingController _initDate = TextEditingController(text: DateFormat.yMd('es').format(DateTime.now()));

    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: height * 0.03,
              horizontal: width * 0.05,
            ),
            //height: height * 0.55,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'What have you already spent on?',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: height * 0.02),
                  buildAddForm(height, _initDate, context),
                  SizedBox(height: height * 0.03),
                  Consumer(builder: (context, watch, child) {
                    final categoriesState = watch(categoriesNotifierProvider.state);
                    return categoriesState.maybeWhen(
                      data: (items) => Wrap(
                        children: [
                          ...items.map((item) => ExpenseCategory(item: item)),
                        ],
                      ),
                      orElse: () => Container(),
                    );
                  }),
                  SizedBox(height: height * 0.03),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Add',
                      style: TextStyle(color: Colors.white),
                    ),
                    splashColor: Colors.black12,
                    color: Colors.black87,
                    onPressed: _submitAdd,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildAddForm(double height, TextEditingController _initDate, BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(hintText: 'ex. Dog Food'),
            maxLength: 35,
            maxLengthEnforced: true,
            maxLines: 1,
            validator: (title) => title.isEmpty ? 'Title can\'t be null' : null,
            onSaved: (title) => _title = title.trim(),
          ),
          SizedBox(height: height * 0.02),
          TextFormField(
            textAlignVertical: TextAlignVertical.top,
            decoration: InputDecoration(hintText: 'What was the expense for?'),
            maxLength: 150,
            maxLengthEnforced: true,
            maxLines: 4,
            onSaved: (description) => _description = description.trim(),
          ),
          SizedBox(height: height * 0.02),
          TextFormField(
            decoration: InputDecoration(hintText: '0.00'),
            keyboardType: TextInputType.number,
            maxLines: 1,
            maxLength: 10,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
            ],
            enableInteractiveSelection: false,
            validator: (import) =>
                import.isEmpty || int.parse(import.replaceAll('.', '')) == 0 ? 'You need an import' : null,
            onSaved: (import) => _import = double.parse(import.trim().replaceAll(',', '')),
          ),
          SizedBox(height: height * 0.02),
          TextFormField(
            controller: _initDate,
            onTap: () async {
              FocusScope.of(context).requestFocus(FocusNode());

              DateTime picked = await showDatePicker(
                locale: Locale('es'),
                initialEntryMode: DatePickerEntryMode.calendar,
                context: context,
                initialDate: _date,
                firstDate: DateTime(2020),
                lastDate: DateTime(2025), //DateTime.now(),
                helpText: 'Select expense date', // Can be used as title
                cancelText: 'Cancel',
                confirmText: 'Done',
                fieldLabelText: 'Expense Date',
                errorInvalidText: 'Invalid date',
                fieldHintText: 'dd/mm/yyyy',
                errorFormatText: 'Invalid format',
                builder: (BuildContext context, Widget child) {
                  return Theme(
                    data: ThemeData(
                      primaryColor: Colors.black87,
                      accentColor: Colors.black87,
                      colorScheme: ColorScheme(
                        brightness: Brightness.light,
                        primaryVariant: Colors.black87,
                        secondaryVariant: Colors.black87,
                        surface: Colors.black87,
                        background: Colors.black87,
                        error: Colors.red,
                        onPrimary: Colors.white,
                        onSecondary: Colors.black87,
                        onError: Colors.red,
                        onSurface: Colors.black87,
                        primary: Colors.black87,
                        secondary: Colors.black87,
                        onBackground: Colors.black87,
                      ),
                    ),
                    child: child,
                  );
                },
              );
              if (picked != null && picked != _date) {
                setState(() {
                  _date = picked;
                  _initDate.text = DateFormat.yMd('es').format(picked);
                });
              }
            },
            maxLines: 1,
            enableInteractiveSelection: false,
            onSaved: (date) {
              _date = DateFormat('dd/MM/yyyy').parse(date);
            },
          ),
        ],
      ),
    );
  }

  void _submitAdd() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      context.read(expensesNotifierProvider).createExpense(_title, _description, _import, _date).then(
        (value) {
          return Flushbar(
            message: 'Expense added',
            //backgroundColor: Theme.of(context).colorScheme.background.withOpacity(0.5),
            icon: Icon(
              Icons.done,
              size: 27.0,
              color: Colors.green,
            ),
            flushbarStyle: FlushbarStyle.FLOATING,
            margin: EdgeInsets.all(20),
            borderRadius: 8,
            duration: Duration(seconds: 2),
            isDismissible: true,
            dismissDirection: FlushbarDismissDirection.VERTICAL,
            animationDuration: Duration(milliseconds: 200),
            leftBarIndicatorColor: Colors.green,
          )..show(context);
        },
      );
      Navigator.pop(context);
    }
  }
}

class ExpenseCategory extends StatelessWidget {
  const ExpenseCategory({
    Key key,
    this.item,
  }) : super(key: key);

  final Category item;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.symmetric(
        vertical: height / 120,
        horizontal: width * 0.03,
      ),
      margin: EdgeInsets.symmetric(
        vertical: height / 200,
        horizontal: width * 0.01,
      ),
      child: Text(item.name,style: TextStyle(color: Colors.white),),
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Center(
      heightFactor: height / 60,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.black87),
      ),
    );
  }
}

class ExpenseTile extends StatelessWidget {
  const ExpenseTile({Key key, this.item}) : super(key: key);

  final Expense item;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    DateTime _today = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

    return Consumer(builder: (context, watch, child) {
      final item = watch(_currentItem);
      return Padding(
        padding: EdgeInsets.symmetric(vertical: height / 450),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.details, arguments: item);
          },
          onLongPress: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                title: Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.amber,
                  size: 40,
                ),
                content: Text('Are you sure you want to delete this expense?'),
                actions: <Widget>[
                  FlatButton(
                    color: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Sure!'),
                    onPressed: () {
                      context.read(expensesNotifierProvider).remove(item);
                      Navigator.of(context).pop();
                      Flushbar(
                        message: 'Expense deleted',
                        //backgroundColor: Theme.of(context).colorScheme.background.withOpacity(0.5),
                        icon: Icon(
                          Icons.delete_forever_rounded,
                          size: 27.0,
                          color: Colors.redAccent,
                        ),
                        flushbarStyle: FlushbarStyle.FLOATING,
                        margin: EdgeInsets.all(20),
                        borderRadius: 8,
                        duration: Duration(seconds: 2),
                        isDismissible: true,
                        dismissDirection: FlushbarDismissDirection.VERTICAL,
                        animationDuration: Duration(milliseconds: 200),
                        leftBarIndicatorColor: Colors.redAccent,
                      )..show(context);
                    },
                  ),
                  FlatButton(
                    child: Text(
                      'Noo!',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            );
          },
          child: Ink(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white, //item.date == _today ? Colors.black12 : Colors.white,
            ),
            padding: EdgeInsets.symmetric(
              vertical: height * 0.02,
              horizontal: width * 0.05,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      item.date == _today
                          ? Text(
                              'Today',
                              style: TextStyle(color: Colors.green),
                            )
                          : Container(),
                      Text(
                        item.title,
                        style: Theme.of(context).textTheme.headline1,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      item.description.isNotEmpty
                          ? Column(
                              children: [
                                SizedBox(height: height * 0.01),
                                Text(
                                  item.description,
                                  style: Theme.of(context).textTheme.bodyText2,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            )
                          : Container(),
                      SizedBox(height: height * 0.01),
                      Text(
                        DateFormat.yMd('es').format(item.date),
                        style: Theme.of(context).textTheme.bodyText2,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: width * 0.01),
                Text(
                  formatCurrency(item.import) + ' €',
                  style: Theme.of(context).textTheme.bodyText2,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

String formatCurrency(num value) {
  return NumberFormat.currency(customPattern: '###,###.##', locale: 'es_ES').format(value);
}
