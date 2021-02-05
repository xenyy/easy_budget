import 'package:easy_budget/app/app_common_widgets/back_button.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        leading: LeadingBackButton(),
      ),
      body: Center(
        child: Text('dashboard'),
      ),
    );
  }
}
