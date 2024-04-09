import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sneaker_ecommerce_frontend/common/custom_appbar.dart';
import 'package:sneaker_ecommerce_frontend/common/custom_container.dart';
import 'package:sneaker_ecommerce_frontend/common/header.dart';
import 'package:sneaker_ecommerce_frontend/constants/constants.dart';
import 'package:sneaker_ecommerce_frontend/view/widgets/category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: CustomAppBar()),
      body: SafeArea(
          child: CustomContainer(
        containerContent: Column(
          children: [
            const CategoryList(),
            Header(
              text: "Popular Products",
              onTap: () {
                //Get.to(() => ProductListPage(title: "Most Popular"));
              },
            ),
            Header(
              text: "New Arrivals",
              onTap: () {},
            ),
            Header(
              text: "Top Sellers",
              onTap: () {},
            )
          ],
        ),
      )),
    );
  }
}
