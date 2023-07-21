import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_gorouter/gorouter/screen/sub_screens.dart';
import '../screen/main_screen.dart';

//로그인 여부, 실제로는 단순변수로 관리 안함
bool authState = false;

final router = GoRouter(
  redirect: (context, state) {
    //모든 route에 적용
    //return string (path) -> 해당 라우트로 redirect
    //return null -> 원래 이동하려던 라우트로 진행
    if (state.location == '/root/login/private' && !authState) {
      return '/root/login';
    }
    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
      routes: [
        GoRoute(
          path: 'root', // /root가 아닌 root로 설정
          builder: (context, state) {
            return const RootScreen();
          },
          routes: [
            GoRoute(
              path: 'basic',
              builder: (context, state) {
                return const BasicScreen();
              },
            ),
            GoRoute(
              path: 'push',
              builder: (context, state) {
                return const PushScreen();
              },
            ),
            GoRoute(
              path: 'pop',
              builder: (context, state) {
                return const PopBaseScreen();
              },
              routes: [
                GoRoute(
                  path: 'return',
                  builder: (context, state) {
                    return const PopReturnScreen();
                  },
                ),
              ],
            ),
            GoRoute(
              path: 'path_param/:id',
              builder: (context, state) {
                return const PathParamScreen();
              },
              routes: [
                GoRoute(
                  path: ':name',
                  builder: (context, state) {
                    return const PathParamScreen();
                    //GoRoute에서 builder안에 어떤 위젯이 return되냐는 중요하지 않다.
                  },
                ),
              ],
            ),
            GoRoute(
              path: 'query_param',
              builder: (context, state) {
                return const QueryParameterScreen();
              },
            ),
            ShellRoute(
              builder: (context, state, child) {
                return NestedScreen(child: child);
              },
              routes: [
                GoRoute(
                  path: 'nested/a',
                  builder: (_, state) {
                    return const NestedChildScreen(
                      routeName: '/nested/a',
                    );
                  },
                ),
                GoRoute(
                  path: 'nested/b',
                  builder: (_, state) {
                    return const NestedChildScreen(
                      routeName: '/nested/b',
                    );
                  },
                ),
                GoRoute(
                  path: 'nested/c',
                  builder: (_, state) {
                    return const NestedChildScreen(
                      routeName: '/nested/c',
                    );
                  },
                ),
              ],
            ),
            GoRoute(
              path: 'login',
              builder: (_, state) => const LoginScreen(),
              routes: [
                GoRoute(
                  path: 'private',
                  builder: (_, state) => const PrivateScreen(),
                )
              ],
            ),
            GoRoute(
              path: 'login2',
              builder: (_, state) => const LoginScreen(),
              routes: [
                GoRoute(
                  path: 'private',
                  builder: (_, state) => const PrivateScreen(),
                  redirect: (_, state) => authState ? null : '/root/login2',
                  //해당 route에서만 redirect를 설정할 수 있다.
                )
              ],
            ),
            GoRoute(
              path: 'transition',
              builder: (_, state) => const TransitionScreenOne(),
              routes: [
                GoRoute(
                  path: 'detail',
                  pageBuilder: (_, state) => CustomTransitionPage(
                    child: const TransitionScreenTwo(),
                    transitionDuration: const Duration(milliseconds: 500),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    }
                  ),
                )
              ],
            ),
          ],
        ),
        GoRoute(
          path: 'named',
          name: 'named_screen',
          builder: (context, state) {
            return const NamedScreen();
          },
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => ErrorScreen(error: state.error.toString()),
  //debugLogDiagnostics: true,
);

// 현재 path 불러오기 : GoRouterState.of(context).location
