import 'package:cryto_wallet/app/core/const/app_color.dart';
import 'package:cryto_wallet/app/core/const/app_icon.dart';
import 'package:cryto_wallet/app/modules/home/views/dashboard_view.dart';
import 'package:cryto_wallet/app/modules/home/views/exchange_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [DashboardView(), ExchangeView(), Center(child: Text("Profile"))];
    return Scaffold(
      body: Obx(() => IndexedStack(index: controller.selectedIndex.value, children: pages)),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeIndex,
          backgroundColor: AppColor.backgroundNavbar,
          selectedItemColor: AppColor.primaryBlue,
          unselectedItemColor: AppColor.primaryWhite,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          useLegacyColorScheme: false,
          enableFeedback: false,
          iconSize: 16,
          items: const [
            BottomNavigationBarItem(icon: Icon(AppIcon.navDashbord), label: "Home"),
            BottomNavigationBarItem(icon: Icon(AppIcon.navExchange), label: "Search"),
            BottomNavigationBarItem(icon: Icon(AppIcon.navUser), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
