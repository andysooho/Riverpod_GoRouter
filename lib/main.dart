import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodv2_gorouter/riverpod/provider/provider_observer.dart';
import 'package:riverpodv2_gorouter/riverpod/screen/home_screen.dart';

void main() {
  runApp(
      ProviderScope(
        observers: [
          Logger(),
        ],
        child: const MaterialApp(
          home: HomeScreen(),
        ),
      )
  );
}
