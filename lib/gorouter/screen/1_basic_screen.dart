import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'BasicScreen, ${GoRouterState.of(context).location}',
      body: Text(
        'BasicScreen',
        textAlign: TextAlign.center,
      )
    );
  }
}
