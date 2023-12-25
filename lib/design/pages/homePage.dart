import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/design/widgets/appDrawer.dart';
import 'package:shop_app/design/widgets/products_grid.dart';
import 'package:shop_app/tools/enums/filterOptions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        title: const Text("MyShop"),
        actions: [
          PopupMenuButton<FilterOptions>(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            color: Colors.purpleAccent.shade100,
            onSelected: (selectedValue) {
              if (selectedValue == FilterOptions.favorites) {
              } else {}
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.favorites,
                child: Text("only favorite"),
              ),
              const PopupMenuItem(
                value: FilterOptions.all,
                child: Text("show all"),
              )
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {
                  print("ontap");
                },
                child: Badge(
                  label: Center(
                    child: Text("7"),
                  ),
                  textColor: Theme.of(context).colorScheme.onPrimary,
                  child: Icon(Icons.shopping_cart_outlined),
                ),
              ),
            ),
          )
        ],
      ),
      drawer: const AppDarwer(),
      body: ProductsGrid(),
    );
  }
}
