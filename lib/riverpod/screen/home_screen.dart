import 'package:flutter/material.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';
import 'package:riverpod_gorouter/riverpod/screen/sub_screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Riverpod HomeScreen',
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          _NewTitle(title:'Provider'),
          _NewButton(title:'StateProviderScreen', screen: StateProviderScreen()),
          _NewButton(title:'StateNotifierProviderScreen', screen: StateNotifierProviderScreen()),
          _NewButton(title: 'FutureProviderScreen', screen: FutureProviderScreen()),
          _NewButton(title: 'StreamProviderScreen', screen: StreamProviderScreen()),
          _NewButton(title: 'FamilyModifierScreen', screen: FamilyModifierScreen()),
          _NewButton(title: 'AutoDisposeModifierScreen', screen: AutoDisposeModifierScreen()),
          _NewButton(title: 'ListenProviderScreen', screen: ListenProviderScreen()),
          _NewButton(title: 'SelectProviderScreen', screen: SelectProviderScreen()),
          _NewButton(title: 'ProviderScreen', screen: ProviderScreen()),
          SizedBox(height: 20,),
          _NewTitle(title:'Code Generation'),
          _NewButton(title: 'CodeGenerationScreen', screen: CodeGenerationScreen()),
        ],
      ),
    );
  }
}

class _NewTitle extends StatelessWidget {
  final String title;

  const _NewTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title,
    style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ) ,);
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
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF774A80),
      ),
      child: Text(title)
    );
  }
}
