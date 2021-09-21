import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Create new task',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
