import 'package:get/get.dart';

import '/design/pages/homePage.dart';

class Routes {
  static String home = "/Home";
  static List<GetPage> get pages => [
        GetPage(
          name: home,
          page: () => HomePage(),
        ),
      ];
}
