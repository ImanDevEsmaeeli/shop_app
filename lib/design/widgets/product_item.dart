import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/stateManagement/controllers/product_controller.dart';
import 'package:shop_app/stateManagement/models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GestureDetector(
        child: GridTile(
          footer: GridTileBar(
            leading: GetBuilder<ProductController>(
              builder: (controller) => IconButton(
                onPressed: () {
                  controller.favorite(product);
                },
                icon: product.isFavorite
                    ? const Icon(
                        Icons.favorite,
                      )
                    : const Icon(
                        Icons.favorite_border_outlined,
                      ),
              ),
            ),
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            trailing: GetBuilder<ProductController>(
              builder: (controller) => IconButton(
                onPressed: () {
                  controller.select(product);
                },
                icon: product.isSelected
                    ? Badge(
                        backgroundColor: Colors.transparent,
                        label: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 17,
                        ),
                        child: Icon(Icons.shopping_cart_outlined),
                      )
                    : Icon(Icons.shopping_cart_outlined),
              ),
            ),
            backgroundColor: Colors.black87,
          ),
          child: Image.asset(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
