import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/design/widgets/product_item.dart';
import 'package:shop_app/stateManagement/controllers/product_controller.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          childAspectRatio: 0.8,
          mainAxisSpacing: 5,
        ),
        itemCount: Get.find<ProductController>().items.length,
        itemBuilder: (context, index) => GetBuilder<ProductController>(
          builder: (controller) => ProductItem(
            product: controller.items[index],
          ),
        ),
      ),
    );
  }
}
