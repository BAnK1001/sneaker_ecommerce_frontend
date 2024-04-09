import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sneaker_ecommerce_frontend/common/app_style.dart';
import 'package:sneaker_ecommerce_frontend/common/reusable_text.dart';
import 'package:sneaker_ecommerce_frontend/constants/constants.dart';
import 'package:sneaker_ecommerce_frontend/controllers/category_controller.dart';
import 'package:sneaker_ecommerce_frontend/view/categories/all_category.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    super.key,
    this.category,
  });
  var category;
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CategoryController>();
    return GestureDetector(
      onTap: () {
        if (controller.categoryValue == category['_id']) {
          controller.updateCategory = '';
          controller.updateTitle = '';
        } else if (category['value'] == 'more') {
          Get.to(() => const AllCategories(),
              transition: Transition.rightToLeftWithFade,
              duration: const Duration(milliseconds: 500));
        } else {
          controller.updateCategory = category['_id'];
          controller.updateTitle = category['title'];
        }
      },
      child: Container(
          margin: EdgeInsets.only(right: 15.w),
          padding: EdgeInsets.only(top: 4.h),
          width: width * 0.19,
          decoration: BoxDecoration(
            border: Border.all(
              color: kOffWhite,
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            children: [
              SizedBox(
                  height: 35.h,
                  child:
                      Image.network(category['imageUrl'], fit: BoxFit.contain)),
              ReusableText(
                  text: category['title'],
                  style: appStyle(12, FontWeight.normal, kDark)),
            ],
          )),
    );
  }
}
