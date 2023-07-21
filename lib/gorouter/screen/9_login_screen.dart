import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';
import 'package:riverpod_gorouter/common/router/router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'LoginScreen, ${GoRouterState.of(context).location}',
      body: ListView(
        children: [
          Text('로그인 상태 : $authState'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                authState = !authState;
              });
            },
            child: Text(authState ? 'Logout' : 'Login'),
          ),

          ElevatedButton(
            onPressed: () {
              if(GoRouterState.of(context).location == '/root/login'){
                context.go('/root/login/private');
              }else{
                context.go('/root/login2/private');
              }
            },
            child: const Text('Go to Private Route'),
          ),
        ],
      ),
    );
  }
}
