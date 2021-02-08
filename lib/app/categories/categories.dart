import 'package:another_flushbar/flushbar.dart';
import 'package:easy_budget/app/app_common_widgets/back_button.dart';
import 'package:easy_budget/app/home/home.dart';
import 'package:easy_budget/models/category.dart';
import 'package:easy_budget/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

final _currentItem = ScopedProvider<Category>(null);

class CategoriesScreen extends StatelessWidget {
  static const String routeName = '/categories';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    String _name;

    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        brightness: Brightness.dark,
        leading: LeadingBackButton(),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: IconButton(
              splashRadius: 25,
              icon: Icon(
                Icons.add_rounded,
                color: Colors.white70,
              ),
              onPressed: () {
                print('added');
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('New category', style: Theme.of(context).textTheme.headline6),
                        SizedBox(height: height * 0.02),
                        Form(
                          key: _formKey,
                          child: TextFormField(
                            decoration: InputDecoration(hintText: 'ex. Food'),
                            validator: (name) => name.isEmpty ? 'Name can\'t be null' : null,
                            onSaved: (name) => _name = name.trim(),
                          ),
                        ),
                      ],
                    ),
                    actions: <Widget>[
                      FlatButton(
                        color: Colors.black87,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Add'),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            context.read(categoriesNotifierProvider).createCategory(_name).then(
                              (value) {
                                return Flushbar(
                                  message: 'Category added',
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
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        color: Colors.black54,
        displacement: height * 0.15,
        onRefresh: () {
          return context.read(categoriesNotifierProvider).refresh();
        },
        child: buildCategoriesList(height),
      ),
    );
  }

  Consumer buildCategoriesList(double height) {
    return Consumer(
      builder: (context, watch, child) {
        final categoriesState = watch(categoriesNotifierProvider.state);
        return categoriesState.when(
          data: (items) {
            return items.isNotEmpty
                ? ListView(
                    children: [
                      ...items.map(
                        (item) => ProviderScope(
                          overrides: [_currentItem.overrideWithValue(item)],
                          child: const CategoryTile(),
                        ),
                      )
                    ],
                  )
                : Center(
                    heightFactor: height / 30,
                    child: Container(
                      child: Text('No categories'),
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
              context.read(categoriesNotifierProvider).retryGettingList();
            },
          ),
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Consumer(
      builder: (context, watch, child) {
        final item = watch(_currentItem);
        return Padding(
          padding: EdgeInsets.symmetric(vertical: height / 450),
          child: InkWell(
            onTap: () {
              // Todo edit category
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
                  Text(
                    item.name,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  IconButton(
                    splashRadius: 25,
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black38,
                    ),
                    onPressed: () {
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
                                context.read(categoriesNotifierProvider).removeCategory(item);
                                Navigator.of(context).pop();
                                Flushbar(
                                  message: 'Category deleted',
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
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
