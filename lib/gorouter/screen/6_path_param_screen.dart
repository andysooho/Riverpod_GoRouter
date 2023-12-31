import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';

class PathParamScreen extends StatelessWidget {
  const PathParamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'PathParamScreen, ${GoRouterState.of(context).location}',
      body: ListView(
        children: [
          Text('Path Param : ${GoRouterState.of(context).pathParameters}'),
          ElevatedButton(
            onPressed: () {
              context.go('/root/path_param/456/codefactory');
            },
            child: Text(
              'Path Param',
            ),
          ),
        ],
      ),
    );
  }
}
