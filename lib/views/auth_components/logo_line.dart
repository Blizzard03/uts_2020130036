import 'package:flutter/material.dart';
import 'package:uts_2020130036/services/constants/colors.dart';

class LogoLine extends StatelessWidget {
  const LogoLine({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 1,
      width: width / 3.5,
      color: AppColors.cBDBDBD,
    );
  }
}
