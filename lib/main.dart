import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/stateManagement/bindings/bindings.dart';
import 'package:shop_app/stateManagement/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Routes.pages,
      initialRoute: Routes.home,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.purple,
          onPrimary: Colors.white,
          secondary: Colors.deepOrange,
          onSecondary: Colors.orange,
          error: Colors.red,
          onError: Colors.redAccent,
          background: Colors.pink,
          onBackground: Colors.purple.shade50,
          surface: Colors.amber,
          onSurface: Colors.amberAccent,
        ),
      ),
      initialBinding: ShopAppBindings(),
    );
  }
}
