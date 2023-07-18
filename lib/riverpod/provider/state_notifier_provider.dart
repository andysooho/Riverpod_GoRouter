import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodv2_gorouter/riverpod/model/shopping_item_model.dart';

//final shoppingListProvider = StateNotifierProvider((ref) => ShoppingListNotifier());
final shoppingListProvider = StateNotifierProvider<ShoppingListNotifier,List<ShoppingItemModel>>
  ((ref) => ShoppingListNotifier());

class ShoppingListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  ShoppingListNotifier()
      : super(
          //super 값들로 시작
          [
            ShoppingItemModel(
              name: '김치',
              quantity: 3,
              hasBought: false,
              isSpicy: true,
            ),
            ShoppingItemModel(
              name: '라면',
              quantity: 5,
              hasBought: false,
              isSpicy: false,
            ),
            ShoppingItemModel(
              name: '수박',
              quantity: 1,
              hasBought: true,
              isSpicy: false,
            ),
            ShoppingItemModel(
              name: '카스테라',
              quantity: 2,
              hasBought: false,
              isSpicy: false,
            ),
            ShoppingItemModel(
              name: '곤돌라',
              quantity: 2,
              hasBought: false,
              isSpicy: false,
            ),
          ],
        );

  void toggleHasBought({required String name}) {
    state = state
        .map((e) => e.name == name
            ? ShoppingItemModel(
                name: e.name,
                quantity: e.quantity,
                hasBought: !e.hasBought,
                isSpicy: e.isSpicy,
              )
            : e)
        .toList();
  }
}
