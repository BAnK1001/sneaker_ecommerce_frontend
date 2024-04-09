import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:sneaker_ecommerce_frontend/common/app_style.dart';
import 'package:sneaker_ecommerce_frontend/common/reusable_text.dart';
import 'package:sneaker_ecommerce_frontend/constants/constants.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.text, required this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: ReusableText(
                    text: text, style: appStyle(16, FontWeight.bold, kDark))),
            GestureDetector(
              onTap: onTap,
              child: ReusableText(
                text: "View All",
                style: appStyle(14, FontWeight.normal, Colors.blueAccent),
              ),
            )
          ],
        ));
  }
}
