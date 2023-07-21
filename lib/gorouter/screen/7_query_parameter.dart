import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';

class QueryParameterScreen extends StatelessWidget {
  const QueryParameterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'QueryParameterScreen, ${GoRouterState.of(context).location}',
      body: ListView(
        children: [
          Text(
              'Query Parameter : ${GoRouterState.of(context).queryParameters}'),
          // /query_parameter?utm=google&source=123
          // /query_parameter?name=soooh&age=32
          ElevatedButton(
            onPressed: () {
              context.push(
                  Uri(
                    path: '/root/query_param',
                    queryParameters: {
                      'name':'soooh',
                      'age':'22'
                    },
                  ).toString(),
              );
            },
            child: Text('Query Parameter'),
          ),
        ],
      ),
    );
  }
}
