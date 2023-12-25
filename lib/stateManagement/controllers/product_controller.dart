import 'package:get/get.dart';
import 'package:shop_app/stateManagement/models/product.dart';

class ProductController extends GetxController {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl: 'assets/images/Tshirt.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl: 'assets/images/Trouser.jpg',
      isSelected: true,
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl: 'assets/images/Yellow_Scarf.png',
      isSelected: true,
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl: 'assets/images/pan.jpg',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  void add(Product product) {
    // add to _items
    update();
  }

  void delete(Product product) {
    _items.remove(product);
    update();
  }

  void edit(Product product) {
    int index = _items.indexWhere((prd) => prd.id == product.id);
    _items[index] = product;
    update();
  }

  void favorite(Product product) {
    product.isFavorite = !product.isFavorite;
    edit(product);
  }

  ///means that this [product] `added` to cart
  void select(Product product) {
    product.isSelected = !product.isSelected;
    edit(product);
  }
}
