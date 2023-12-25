import 'package:flutter/material.dart';

class AppDarwer extends StatelessWidget {
  const AppDarwer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        child: Column(
          children: [
            AppBar(
              title: const Text("MyShop"),
              elevation: 2,
              automaticallyImplyLeading: false,
            ),
            ListTile(
              leading: const Icon(Icons.shop),
              title: const Text('shop'),
              onTap: () {},
              shape: const StadiumBorder(),
            ),
           const  Divider(),
            ListTile(
              leading: const Icon(Icons.payment_rounded),
              title: const Text('Orders'),
              onTap: () {},
              shape: const StadiumBorder(),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("MyShop v.1"),
            )
          ],
        ));
  }
}
