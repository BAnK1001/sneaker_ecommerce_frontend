import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sneaker_ecommerce_frontend/common/app_style.dart';
import 'package:sneaker_ecommerce_frontend/common/reusable_text.dart';
import 'package:sneaker_ecommerce_frontend/constants/constants.dart';
import 'package:sneaker_ecommerce_frontend/view/categories/category_page.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({
    super.key,
    required this.category,
  });

  var category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => const CategoryPage(),
            transition: Transition.fadeIn,
            duration: Duration(milliseconds: 300));
      },
      leading: CircleAvatar(
        radius: 18.r,
        backgroundColor: kGrayLight,
        child: Image.network(category["imageUrl"], fit: BoxFit.contain),
      ),
      title: ReusableText(
        text: category["title"],
        style: appStyle(12, FontWeight.normal, kGray),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: kGray,
        size: 15.r,
      ),
    );
  }
}
