import 'package:coffee_taste/app/modules/home/views/home_view.dart';
import 'package:coffee_taste/app/modules/saved/views/saved_view.dart';
import 'package:coffee_taste/app/modules/setting/views/setting_view.dart';
import 'package:coffee_taste/app/modules/shop/views/shop_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      initState: (_) {},
      builder: (_) {
        return Obx(
          () => Scaffold(
            body: [
              const HomeView(),
              const SavedView(),
              const ShopView(),
              const SettingView()
            ][controller.state.currentPageIndex],
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(36, 32, 30, 0.72),
                    Color.fromARGB(255, 36, 32, 30)
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
              child: NavigationBar(
                elevation: 3.0,
                backgroundColor: const Color.fromARGB(255, 85, 67, 60),
                indicatorColor: const Color.fromARGB(255, 169, 124, 55),
                indicatorShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                destinations: [
                  NavigationDestination(
                    label: "",
                    icon: Image.asset("assets/images/dashboard.png"),
                  ),
                  NavigationDestination(
                    label: "",
                    icon: Image.asset("assets/images/favorite_outline.png"),
                  ),
                  NavigationDestination(
                    label: "",
                    icon: Image.asset("assets/images/local_mall.png"),
                  ),
                  NavigationDestination(
                    label: "",
                    icon: Image.asset("assets/images/person.png"),
                  ),
                ],
                selectedIndex: controller.state.currentPageIndex,
                onDestinationSelected: (value) =>
                    {controller.state.currentPageIndex = value},
              ),
            ),
          ),
        );
      },
    );
  }
}
