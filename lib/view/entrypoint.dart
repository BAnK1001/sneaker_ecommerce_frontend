// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:sneaker_ecommerce_frontend/constants/constants.dart';
import 'package:sneaker_ecommerce_frontend/controllers/tab_index_controller.dart';
import 'package:sneaker_ecommerce_frontend/view/cart/cart_page.dart';
import 'package:sneaker_ecommerce_frontend/view/home/home_page.dart';
import 'package:sneaker_ecommerce_frontend/view/notification/notification_page.dart';
import 'package:sneaker_ecommerce_frontend/view/profile/profile_page.dart';
import 'package:sneaker_ecommerce_frontend/view/favorite/favorite_page.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    FavoritePage(),
    CartPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              pageList[controller.tabIndex],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                  data: Theme.of(context).copyWith(canvasColor: kPrimary),
                  child: BottomNavigationBar(
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    unselectedIconTheme:
                        const IconThemeData(color: Colors.black54),
                    selectedIconTheme: IconThemeData(color: kSecondary),
                    onTap: (value) {
                      controller.setTabIndex = value;
                    },
                    currentIndex: controller.tabIndex,
                    items: [
                      BottomNavigationBarItem(
                          icon: controller.tabIndex == 0
                              ? const Icon(AntDesign.appstore1)
                              : const Icon(AntDesign.appstore_o),
                          label: 'Home'),
                      const BottomNavigationBarItem(
                          icon: Icon(Icons.favorite), label: 'Favorite'),
                      const BottomNavigationBarItem(
                          icon: Badge(
                            child: Icon(FontAwesome.shopping_cart),
                            label: Text('1'),
                          ),
                          label: 'Cart'),
                      BottomNavigationBarItem(
                          icon: const Icon(AntDesign.notification),
                          label: 'Notification'),
                      BottomNavigationBarItem(
                          icon: controller.tabIndex == 4
                              ? const Icon(FontAwesome.user_circle)
                              : const Icon(FontAwesome.user_circle_o),
                          label: 'Profile'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
