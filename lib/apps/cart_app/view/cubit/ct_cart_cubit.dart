import 'package:bloc/bloc.dart';
import 'package:drible_app/apps/cart_app/cart_app.dart';

class CartCubit extends Cubit<List<Item>> {
  CartCubit() : super([]);

  void addToCart(Item item) {
    if (!state.contains(item)) {
      emit([...state, item]);
    }
  }

  void removeFromCart(Item item) {
    emit(state.where((i) => i != item).toList());
  }

  bool isInCart(Item item) {
    return state.contains(item);
  }

  double get totalPrice => state.fold(0, (sum, item) => sum + item.price);
}
