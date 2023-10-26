import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uts_2020130036/controllers/home_screen_controller.dart';
import 'package:uts_2020130036/services/constants/colors.dart';
import 'package:uts_2020130036/services/theme/text_styles.dart';
import 'tab_bar_widgets.dart';

class TabBarComponents extends StatelessWidget {
  final HomeController controller;

  const TabBarComponents({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: controller.categoryList.length,
          primary: false,
          itemBuilder: (context, index) {
            final category = controller.categoryList[index];

            return CustomTabBarWidget(
              onPressed: () => controller.buttonTabBar(index),
              text: category.name,
              style: AppTextStyles.nunitoSansSemiBold14,
              color: controller.initialCategoryPage == index
                  ? AppColors.c303030
                  : AppColors.cF0F0F0,
              widget: SvgPicture.asset(category.icon),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 25),
        ),
      ),
    );
  }
}
