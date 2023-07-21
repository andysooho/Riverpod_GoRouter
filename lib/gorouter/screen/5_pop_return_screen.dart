import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';

class PopReturnScreen extends StatelessWidget {
  const PopReturnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'PopReturnScreen, ${GoRouterState.of(context).location}',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: (){
              //context.pop(); 그냥 뒤로가기
              context.pop('여러개 값을 반환하고 싶으면 리스트,클래스 등을 이용하기');
            },
            child: const Text('Pop'),
          ),
        ],
      ),
    );
  }
}
