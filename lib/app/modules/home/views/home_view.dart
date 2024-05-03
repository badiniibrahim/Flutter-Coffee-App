import 'package:coffee_taste/app/modules/home/widgets/item/coffee_item.dart';
import 'package:coffee_taste/app/modules/home/widgets/item/verticla_coffee.dart';
import 'package:coffee_taste/app/modules/home/widgets/search/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../widgets/chip/chip.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 27, 24),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/home_background.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/tast.png"),
                const SizedBox(height: 20),
                Text(
                  "Coffee Taste!".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 4,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/user.png"),
                  Image.asset("assets/images/menu.png"),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "Hi, William",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 4,
                ),
              ),
            ),
          ),
          const Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: Search(),
          ),
          Positioned(
            top: 320,
            left: 0,
            right: 0,
            child: ChipList(),
          ),
          const Positioned(
            top: 380,
            left: 0,
            right: 0,
            child: CoffeeList(),
          ),
          const Positioned(
            top: 570,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Frozen Beverages",
                    style: TextStyle(
                      color: Color.fromARGB(128, 255, 255, 255),
                      fontSize: 14,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Color.fromARGB(255, 169, 124, 55),
                      fontSize: 12,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
            top: 580,
            left: 0,
            right: 0,
            child: CoffeeVerticalList(),
          ),
        ],
      ),
    );
  }
}
