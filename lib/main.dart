import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_gorouter/common/screen/main_screen.dart';
import 'package:riverpod_gorouter/riverpod/provider/provider_observer.dart';

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
      child: const MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}
