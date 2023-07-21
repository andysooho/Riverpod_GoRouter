import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_gorouter/riverpod/provider/provider_observer.dart';

import 'common/router/router.dart';

void main() {
  runApp(
    const _App(),
  );
}

class _App extends StatelessWidget {
  const _App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [
        Logger(),
      ],
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
