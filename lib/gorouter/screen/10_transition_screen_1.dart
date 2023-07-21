import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';

class TransitionScreenOne extends StatelessWidget {
  const TransitionScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'TransitionScreenOne, ${GoRouterState.of(context).location}',
      body: Container(
        color: Colors.red,
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/root/transition/detail');
              },
              child: const Text(
                'Go to Detail',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
