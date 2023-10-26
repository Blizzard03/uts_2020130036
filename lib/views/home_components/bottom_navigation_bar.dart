import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uts_2020130036/controllers/main_controller.dart';
import 'package:uts_2020130036/services/constants/colors.dart';
import 'package:uts_2020130036/services/constants/icons.dart';

class AppNavigationBar extends StatelessWidget {
  final MainController controller;

  const AppNavigationBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final selectedIcons = [
      Customicons.homeFill.path,
      Customicons.markerFill.path,
      Customicons.bellFill.path,
      Customicons.personFill.path,
    ];

    final unselectedIcons = [
      Customicons.home.path,
      Customicons.marker.path,
      Customicons.bell.path,
      Customicons.person.path,
    ];

    return NavigationBar(
      selectedIndex: 0,
      height: 70,
      backgroundColor: AppColors.cFFFFFF,
      destinations: [
        for (int i = 0; i < selectedIcons.length; i++)
          CupertinoButton(
            onPressed: () => controller.buttonNavigationBar(i),
            child: SizedBox(
              width: 30,
              height: 35,
              child: Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(
                  controller.initialPage == i
                      ? selectedIcons[i]
                      : unselectedIcons[i],
                ),
              ),
            ),
          )
      ],
    );
  }
}
