import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodv2_gorouter/common/layout/default_layout.dart';
import 'package:riverpodv2_gorouter/riverpod/provider/provider.dart';
import 'package:riverpodv2_gorouter/riverpod/provider/state_notifier_provider.dart';

class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filteredItem = ref.watch(filteredShoppingListProvider);

    return DefaultLayout(
      title: 'ProviderScreen',
      actions: [
        PopupMenuButton<FilterState>(
          itemBuilder: (_) {
            return FilterState.values
                .map(
                  (e) => PopupMenuItem<FilterState>(
                    value: e,
                    child: Text(e.name),
                  ),
                )
                .toList();
          },
          onSelected: (value){
            ref.read(filterProvider.notifier).update((state) => value);
          },
        ),
      ],
      body: ListView(
        children: filteredItem
            .map(
              (e) => CheckboxListTile(
                title: Text('${e.name}(${e.quantity})'),
                value: e.hasBought,
                onChanged: (value) {
                  ref
                      .read(shoppingListProvider.notifier)
                      .toggleHasBought(name: e.name);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
