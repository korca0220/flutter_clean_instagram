import 'package:get/get.dart';
import 'package:flutter_clean_instagram/app/ui/android/home/home_page.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => HomePage()),
  ];
}