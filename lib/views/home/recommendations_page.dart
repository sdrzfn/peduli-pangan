import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peduli_pangan/common/app_style.dart';
import 'package:peduli_pangan/common/back_ground_container.dart';
import 'package:peduli_pangan/common/reusable_text.dart';
import 'package:peduli_pangan/constants/constants.dart';
import 'package:peduli_pangan/constants/uidata.dart';
import 'package:peduli_pangan/views/home/widgets/food_tile.dart';

class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
     appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondary,
        title: ReusableText(text: "Recommendations", 
        style: appStyle(13, kLightWhite, FontWeight.w600)),
      ),
      body: BackGroundContainer(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: ListView(
            children: List.generate(foods.length, (i) {
              var food = foods[i];
              return FoodTile(
                food: food,
              );
            }),
          ),
        ),
      ),
    );
  }
}