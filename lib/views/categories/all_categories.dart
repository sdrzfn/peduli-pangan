import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peduli_pangan/common/app_style.dart';
import 'package:peduli_pangan/common/back_ground_container.dart';
import 'package:peduli_pangan/common/reusable_text.dart';
import 'package:peduli_pangan/constants/constants.dart';
import 'package:peduli_pangan/constants/uidata.dart';
import 'package:peduli_pangan/views/categories/widgets/category_tile.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: ReusableText(
            text: "Categories", style: appStyle(12, kGray, FontWeight.w600)),
      ),
      body: BackGroundContainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 12.w, top: 10.h),
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(categories.length, (i) {
              var category = categories[i];
              return CategoryTile(category: category);
            }),
          ),
        ),
      ),
    );
  }
}
