import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';

class TransitionScreenTwo extends StatelessWidget {
  const TransitionScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'TransitionScreenTwo, ${GoRouterState.of(context).location}',
      body: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('POP'),
            ),
          ],
        ),
      ),
    );
  }
}
