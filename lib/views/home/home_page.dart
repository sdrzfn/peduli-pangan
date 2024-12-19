import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peduli_pangan/common/custom_appbar.dart';
import 'package:peduli_pangan/common/custom_container.dart';
import 'package:peduli_pangan/common/heading.dart';
import 'package:peduli_pangan/constants/constants.dart';
import 'package:peduli_pangan/views/home/all_fastest_foods_page.dart';
import 'package:peduli_pangan/views/home/all_nearby_restaurants.dart';
import 'package:peduli_pangan/views/home/recommendations_page.dart';
import 'package:peduli_pangan/views/home/widgets/category_list.dart';
import 'package:peduli_pangan/views/home/widgets/food_list.dart';
import 'package:peduli_pangan/views/home/widgets/nearby_restaurants_list.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: const CustomAppBar()),
      body: SafeArea(
        child: CustomContainer(
            containerContent: Column(
          children: [
            const CategoryList(),
            Heading(
              text: "Nearby Restaurants",
              onTap: () {
                Get.to(() =>const AllNearbyRestaurants(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
              },
            ),

            const NearbyRestaurants(),
            
            Heading(
              text: "Try Something New",
              onTap: () {
                Get.to(() => const RecommendationsPage(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
              },
            ),

            const FoodsList(),

            Heading(
              text: "Food closer to you",
              onTap: () {
                Get.to(() => const AllFastestFoods(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
              },
            ),
            const FoodsList(),
          ],
        )),
      ),
    );
  }
}
