import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';
import 'package:riverpod_gorouter/riverpod/provider/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name1 = ref.watch(gStateProvider);
    final name2 = ref.watch(gStateFutureProvider);
    final name3 = ref.watch(gStateFuture2Provider);
    final name4 = ref.watch(gStateFamilyProvider(
      number1: 10,
      number2: 20,
    ));

    return DefaultLayout(
      title: 'CodeGenerationScreen',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('print : $name1'),
          name2.when(
            data: (data) {
              return Text(
                data.toString(),
                textAlign: TextAlign.center,
              );
            },
            error: (err, stack) => Text(
              err.toString(),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
          name3.when(
            data: (data) {
              return Text(
                data.toString(),
                textAlign: TextAlign.center,
              );
            },
            error: (err, stack) => Text(
              err.toString(),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
          Text('print : $name4'),
          //국소적으로 build
          Consumer(
              builder: (context, ref, child){
                final name5 = ref.watch(gStateNotifierProvider);
                return Row(
                  children: [
                    Text('state5: $name5'),
                    if (child != null) child,
                  ],
                );
              },
              child : const Text('이것은 무거운 위젯이어서 \nConsumer가 rebuild하지 않는 것.'),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(gStateNotifierProvider.notifier).increment();
                },
                child: const Text('Increment'),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(gStateNotifierProvider.notifier).decrement();
                },
                child: const Text('Decrement'),
              ),
            ],
          ),
          //invalidate() : 초기값으로 되돌림
          ElevatedButton(
            onPressed: () {
              ref.invalidate(gStateNotifierProvider);
            },
            child: const Text('invalidate'),
          ),
        ],
      ),
    );
  }
}
