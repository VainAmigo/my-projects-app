import 'package:flutter/foundation.dart';
import 'package:drible_app/apps/cart_app/cart_app.dart';

class CartModel extends ChangeNotifier {
  final List<Item> _items = [];

  List<Item> get items => List.unmodifiable(_items);

  void add(Item item) {
    if (!_items.contains(item)) {
      _items.add(item);
      notifyListeners();
    }
  }

  void remove(Item item) {
    _items.remove(item);
    notifyListeners();
  }

  bool contains(Item item) => _items.contains(item);

  double get totalPrice =>
      _items.fold(0, (total, current) => total + current.price);
}
