import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sneaker_ecommerce_frontend/common/custom_container.dart';
import 'package:sneaker_ecommerce_frontend/constants/constants.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: Container(
          height: 130.h,
        ),
      ),
      body: SafeArea(
          child: CustomContainer(
        containerContent: Container(),
      )),
    );
  }
}
