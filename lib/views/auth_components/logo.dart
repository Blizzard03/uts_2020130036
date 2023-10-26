import 'package:flutter/material.dart';
import 'package:uts_2020130036/services/constants/svg_icons.dart';
import 'logo_line.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 30, left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LogoLine(),
          SvgIcon.logo,
          const LogoLine(),
        ],
      ),
    );
  }
}
