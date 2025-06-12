import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  // Judul per tab
  String get currentTitle {
    switch (selectedIndex.value) {
      case 0:
        return "Home";
      case 1:
        return "Search";
      case 2:
        return "Profile";
      default:
        return "App";
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
