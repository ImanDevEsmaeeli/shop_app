import 'package:get/get.dart';
import 'package:shop_app/stateManagement/models/cart_Item.dart';
import 'package:shop_app/stateManagement/models/product.dart';

class Cart extends GetxController {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  void add(Product product) {
    if (_items.containsKey(product.id)) {
      _items.update(
        product.id,
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          price: existingCartItem.price,
          quantity: existingCartItem.quantity + 1,
          title: existingCartItem.title,
        ),
      );
    } else {
      _items.putIfAbsent(product.id, () {
        return CartItem(
          id: DateTime.now().toString(),
          price: product.price,
          quantity: 1,
          title: product.title,
        );
      });
    }

    update();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    update();
  }

  void clear() {
    _items.clear();
    update();
  }

  int get itemCOunt {
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartitem) {
      total += cartitem.price * cartitem.quantity;
    });
    return total;
  }
}
