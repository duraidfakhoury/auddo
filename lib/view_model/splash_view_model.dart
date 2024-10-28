import 'package:auddo/view/main_tabview/main_tab_view.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController {

  void loadView() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(()=> const MainTabView());
  }
}