import 'package:another_flushbar/flushbar.dart';
import 'package:easy_budget/app/home/home.dart';
import 'package:easy_budget/models/expense.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_budget/app/app_common_widgets/back_button.dart';
import 'package:easy_budget/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class EditScreen extends StatefulWidget {
  static const String routeName = '/edit';

  final Expense expense;
  const EditScreen({Key key, this.expense}) : super(key: key);

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final _formKey = GlobalKey<FormState>();
  String _title, _description;
  double _import;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        leading: LeadingBackButton(),
        actions: [
          IconButton(
              splashRadius: 25,
              icon: Icon(
                Icons.save,
                color: Colors.white70,
              ),
              onPressed: _submitEdit),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: height * 0.03, horizontal: width * 0.05),
        child: buildEditForm(height),
      ),
    );
  }

  Form buildEditForm(double height) {
    MoneyMaskedTextController _controller = MoneyMaskedTextController(
      decimalSeparator: '.',
      thousandSeparator: ',',
      initialValue: widget.expense.import,
    );
    return Form(
      key: _formKey,
      child: Consumer(
        builder: (context, watch, child) {
          final totalExpenses = watch(expensesNotifierProvider.state);
          return totalExpenses.when(
            data: (expense) {
              return ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ...expense.where((element) => element.id == widget.expense.id).map(
                    (item) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextFormField(
                            initialValue: item.title,
                            maxLength: 35,
                            maxLengthEnforced: true,
                            maxLines: 1,
                            validator: (title) => title.isEmpty ? 'Title can\'t be null' : null,
                            onSaved: (title) => _title = title.trim(),
                          ),
                          SizedBox(height: height * 0.02),
                          TextFormField(
                            initialValue: item.description,
                            textAlignVertical: TextAlignVertical.top,
                            maxLength: 150,
                            maxLengthEnforced: true,
                            maxLines: 4,
                            onSaved: (description) => _description = description.trim(),
                          ),
                          SizedBox(height: height * 0.02),
                          TextFormField(
                            controller: _controller,
                            keyboardType: TextInputType.number,
                            maxLines: 1,
                            maxLength: 10,
                            enableInteractiveSelection: false,
                            validator: (import) => import == '0.00' ? 'You need an import' : null,
                            onSaved: (import) => _import = double.parse(import.trim().replaceAll(',', '')),
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

  void _submitEdit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      context.read(expensesNotifierProvider).editExpense(widget.expense.id, _title, _description, _import).then(
        (value) {
          return Flushbar(
            message: 'Expense edited',
            //backgroundColor: Theme.of(context).colorScheme.background.withOpacity(0.5),
            icon: Icon(
              Icons.tag_faces_rounded,
              size: 27.0,
              color: Colors.lightGreen,
            ),
            flushbarStyle: FlushbarStyle.FLOATING,
            margin: EdgeInsets.all(20),
            borderRadius: 8,
            duration: Duration(seconds: 2),
            isDismissible: true,
            dismissDirection: FlushbarDismissDirection.VERTICAL,
            animationDuration: Duration(milliseconds: 200),
            leftBarIndicatorColor: Colors.lightGreen,
          )..show(context);
        },
      );
      Navigator.pop(context);
    }
  }
}
