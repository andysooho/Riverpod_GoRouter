import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodv2_gorouter/common/layout/default_layout.dart';
import 'package:riverpodv2_gorouter/riverpod/provider/select_provider.dart';

class SelectProviderScreen extends ConsumerWidget {
  const SelectProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectProvider.select((value) => value.isSpicy));
    //listen 또한 select 가능
    ref.listen(selectProvider.select((value) => value.hasBought), (previous, next) {
      print('next:${next}');
    });

    return DefaultLayout(
      title: 'SelectProviderScreen',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'isSpicy:${state}',
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: (){
                    ref.read(selectProvider.notifier).toggleHasBought();
                  },
                  child: const Text('ToggleBought'),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: (){
                    ref.read(selectProvider.notifier).toggleIsSpicy();
                  },
                  child: const Text('ToggleSpicy'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
