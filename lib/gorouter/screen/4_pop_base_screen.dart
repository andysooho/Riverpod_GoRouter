import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';

class PopBaseScreen extends StatelessWidget {
  const PopBaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'PopBaseScreen, ${GoRouterState.of(context).location}',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () async {
              //async로 만들고 페이지에서 특정 값 받기 가능
              final res = await context.push('/root/pop/return');

              print(res);
            },
            child: const Text('Push: Pop return Screen'),
          ),
        ],
      ),
    );
  }
}
