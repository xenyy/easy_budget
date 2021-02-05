import 'package:another_flushbar/flushbar.dart';
import 'package:easy_budget/app/home/home.dart';
import 'package:easy_budget/models/expense.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_budget/app/app_common_widgets/back_button.dart';
import 'package:easy_budget/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditScreen extends StatefulWidget {
  static const String routeName = '/edit';

  final Expense expenseItem;
  const EditScreen({Key key, this.expenseItem}) : super(key: key);

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _initDate;
  String _title, _description;
  double _import;
  DateTime _date;

  @override
  void initState() {
    super.initState();
    _initDate = TextEditingController(text: DateFormat.yMd('es').format(widget.expenseItem.date));
  }

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
              onPressed: _submitEdit,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: height * 0.03, horizontal: width * 0.05),
        child: buildEditForm(height),
      ),
    );
  }

  Form buildEditForm(double height) {
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
                  ...expense.where((element) => element.id == widget.expenseItem.id).map(
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
                            initialValue: item.import.toString(),
                            keyboardType: TextInputType.numberWithOptions(decimal: true),
                            maxLines: 1,
                            maxLength: 10,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                            ],
                            enableInteractiveSelection: false,
                            validator: (import) => import == '0.00' ? 'You need an import' : null,
                            onSaved: (import) => _import = double.parse(import.trim().replaceAll(',', '')),
                          ),
                          TextFormField(
                            controller: _initDate,
                            onTap: () async {
                              FocusScope.of(context).requestFocus(FocusNode());

                              DateTime picked = await showDatePicker(
                                locale: Locale('es'),
                                initialEntryMode: DatePickerEntryMode.calendar,
                                context: context,
                                initialDate: DateFormat('dd/MM/yyyy').parse(_initDate.text),
                                firstDate: DateTime(2020),
                                lastDate: DateTime(2025),
                                helpText: 'Select expense date', // Can be used as title
                                cancelText: 'Cancel',
                                confirmText: 'Done',
                                fieldLabelText: 'Expense Date',
                                errorInvalidText: 'Invalid date',
                                fieldHintText: 'mm/dd/yyyy',
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
                              if (picked != null && picked != _date){
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
      context.read(expensesNotifierProvider).editExpense(widget.expenseItem.id, _title, _description, _import, _date).then(
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
