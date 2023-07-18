import 'package:flutter/material.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';
import 'package:riverpod_gorouter/riverpod/screen/future_provider_screen.dart';
import 'package:riverpod_gorouter/riverpod/screen/state_notifier_provider_screen.dart';
import 'package:riverpod_gorouter/riverpod/screen/state_provider_screen.dart';
import 'package:riverpod_gorouter/riverpod/screen/stream_provider_screen.dart';
import 'auto_dispose_modifier_screen.dart';
import 'family_modifier_screen.dart';
import 'listen_provider_screen.dart';
import 'provider_screen.dart';
import 'select_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: ListView(
        children: const [
          _NewButton(title:'StateProviderScreen', screen: StateProviderScreen()),
          _NewButton(title:'StateNotifierProviderScreen', screen: StateNotifierProviderScreen()),
          _NewButton(title: 'FutureProviderScreen', screen: FutureProviderScreen()),
          _NewButton(title: 'StreamProviderScreen', screen: StreamProviderScreen()),
          _NewButton(title: 'FamilyModifierScreen', screen: FamilyModifierScreen()),
          _NewButton(title: 'AutoDisposeModifierScreen', screen: AutoDisposeModifierScreen()),
          _NewButton(title: 'ListenProviderScreen', screen: ListenProviderScreen()),
          _NewButton(title: 'SelectProviderScreen', screen: SelectProviderScreen()),
          _NewButton(title: 'ProviderScreen', screen: ProviderScreen()),
          _NewButton(title: 'FamilyModifierScreen', screen: FamilyModifierScreen()),
        ],
      ),
    );
  }
}

class _NewButton extends StatelessWidget {
  final String title;
  final Widget screen;

  const _NewButton({
    super.key,
    required this.title,
    required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => screen)
        );
      },
      child: Text(title),
    );
  }
}
