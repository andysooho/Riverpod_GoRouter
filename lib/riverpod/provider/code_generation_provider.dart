import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';
//$ flutter pub run build_runner build

/*
1) 어떤 Provider를 사용할지 고민할 필요가 없도록 자동으로 결정
 Provider, FutureProvider, StreamProvider
 StateNotifierProvider
2) Parameter > Family 파라미터를 일반 함수처럼 사용할수 있음
*/

//1) final _testProvider = Provider<String>((ref) => 'Hello');
@riverpod
String gState(GStateRef ref){
  return 'Hello';
}

@riverpod
Future<int> gStateFuture(GStateFutureRef ref) async {
  await Future.delayed(Duration(seconds: 2));
  return 10;
}

@Riverpod(
  keepAlive: true, //autoDispose: false
)
Future<int> gStateFuture2(GStateFuture2Ref ref) async {
  await Future.delayed(Duration(seconds: 2));
  return 10;
}

/* 2)
class Parameter {
  final int number1;
  final int number2;

  Parameter({
    required this.number1,
    required this.number2,
  });
}

final _testFamilyProvider = Provider.family<int,Parameter>((ref,parameter) {
  return parameter.number1 + parameter.number2;
});
*/

@riverpod
int gStateFamily(GStateFamilyRef ref, {
  required int number1,
  required int number2,
}) {
  return number1 + number2;
}

@riverpod
class GStateNotifier extends _$GStateNotifier {

  @override
  int build() { //build()에 초기 상태 지정
    return 10;
  }

  increment() {
    state++;
  }

  decrement() {
    state--;
  }
}

