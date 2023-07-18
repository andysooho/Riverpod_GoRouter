import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';
import 'package:riverpod_gorouter/riverpod/provider/state_provider.dart';


class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(numberProvider);

    return DefaultLayout(
      title: 'StateProviderScreen',
      body: SizedBox(
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              provider.toString(),
            ),
            ElevatedButton(
              onPressed: () { //StateProvider 업데이트 방법 1
                ref.read(numberProvider.notifier).update((state) => state + 1);
                //지금 현재 상태를 업데이트
              },
              child: const Text('UP'),
            ),
            ElevatedButton(
              onPressed: () { //StateProvider 업데이트 방법 2
                ref.read(numberProvider.notifier).state -= 1;
              },
              child: const Text('DOWN'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => _NextScreen())
                );
              },
              child: const Text('Next Screen'),
            ),
          ],
        ),
      ),
    );
  }
}


class _NextScreen extends ConsumerWidget {
  const _NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final num = ref.watch(numberProvider);

    return DefaultLayout(
      title: '_NextScreen',
      body: SizedBox(
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              num.toString(),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(numberProvider.notifier).update((state) => state + 1);
                //지금 현재 상태를 업데이트
              },
              child: const Text('UP'),
            ),
          ],
        ),
      ),
    );
  }
}
