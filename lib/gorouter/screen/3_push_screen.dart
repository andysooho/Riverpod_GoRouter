import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';

class PushScreen extends StatelessWidget {
  const PushScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'PushScreen, ${GoRouterState.of(context).location}',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: (){
              context.push('/root/basic');
            },
            child: const Text('Push Basic'),
          ),
          ElevatedButton(
            onPressed: (){
              context.go('/root/basic');
            },
            child: const Text('Go Basic'),
          ),
        ],
      ),
    );
  }
}
