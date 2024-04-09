import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sneaker_ecommerce_frontend/common/app_style.dart';
import 'package:sneaker_ecommerce_frontend/common/reusable_text.dart';
import 'package:sneaker_ecommerce_frontend/constants/constants.dart';
import 'package:sneaker_ecommerce_frontend/constants/uidata.dart';
import 'package:sneaker_ecommerce_frontend/controllers/category_controller.dart';
import 'package:sneaker_ecommerce_frontend/view/categories/all_category.dart';

import 'category_widget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return Container(
      height: 80.h,
      padding: EdgeInsets.only(
        left: 12.w,
        top: 10.h,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories.length, (i) {
          var category = categories[i];
          return CategoryWidget(category: category);
        }),
      ),
    );
  }
}
