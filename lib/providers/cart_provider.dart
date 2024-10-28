import 'package:final_proj_flutter/models/cart_item_model.dart';
import 'package:flutter/foundation.dart';

class CartProvider with ChangeNotifier {
  static final CartProvider _instance = CartProvider._internal();
  factory CartProvider() => _instance;
  CartProvider._internal();

  final List<CartItemModel> _cartItems = [];

  List<CartItemModel> get cartItems => _cartItems;

  void addItem(CartItemModel item) {
    _cartItems.add(item);
    notifyListeners();
  }

  void removeItem(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  void increaseQuantity(int index) {
    _cartItems[index].increaseQuantity();
    notifyListeners();
  }

  void decreaseQuantity(int index) {
    _cartItems[index].decreaseQuantity();
    notifyListeners();
  }
}
