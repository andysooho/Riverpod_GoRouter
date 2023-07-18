import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_gorouter/riverpod/provider/state_notifier_provider.dart';

final filteredShoppingListProvider = Provider((ref) {
  final sProvider = ref.watch(shoppingListProvider);
  final fProvider = ref.watch(filterProvider);

  if(fProvider == FilterState.all){
    return sProvider;
  }

  return fProvider == FilterState.spicy
      ? sProvider.where((e) => e.isSpicy)
      : sProvider.where((e) => !e.isSpicy);
});

enum FilterState{
  notSpicy,
  spicy,
  all,
}

final filterProvider = StateProvider<FilterState>((ref) => FilterState.all);