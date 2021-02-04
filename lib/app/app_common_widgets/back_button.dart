import 'package:flutter/material.dart';

class LeadingBackButton extends StatelessWidget {
  const LeadingBackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 25,
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white70,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
