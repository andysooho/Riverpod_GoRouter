import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'RootScreen, ${GoRouterState.of(context).location}',
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const _NewTitle(title: 'Go router'),
          ElevatedButton(
            onPressed: (){
              context.go('/root/basic');
            },
            child: const Text('Go Basic'),
          ),
          ElevatedButton(
            onPressed: (){
              context.goNamed('named_screen');
            },
            child: const Text('Go Named'),
          ),
          ElevatedButton(
            onPressed: (){
              context.go('/root/push');
            },
            child: const Text('Push'),
          ),
          ElevatedButton(
            onPressed: (){
              context.go('/root/pop');
            },
            child: const Text('Pop'),
          ),
          ElevatedButton(
            onPressed: (){
              context.go('/root/path_param/456');
            },
            child: const Text('Path Param'),
          ),
          ElevatedButton(
            onPressed: (){
              context.go('/root/query_param');
            },
            child: const Text('Query Parameter'),
          ),
          ElevatedButton(
            onPressed: (){
              context.go('/root/nested/b');
            },
            child: const Text('Go Nested'),
          ),
          ElevatedButton(
            onPressed: (){
              context.go('/root/login');
            },
            child: const Text('Login Screen'),
          ),
          ElevatedButton(
            onPressed: (){
              context.go('/root/login2');
            },
            child: const Text('Login2 Screen'),
          ),
          ElevatedButton(
            onPressed: (){
              context.go('/root/transition');
            },
            child: const Text('Transition Screen'),
          ),
          ElevatedButton(
            onPressed: (){
              context.go('/root/error');
            },
            child: const Text('Error Screen'),
          ),
        ],
      ),
    );
  }
}

class _NewTitle extends StatelessWidget {
  final String title;

  const _NewTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
