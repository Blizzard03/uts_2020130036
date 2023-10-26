import 'package:flutter/material.dart';
import 'package:uts_2020130036/services/constants/colors.dart';
import 'package:uts_2020130036/services/constants/strings.dart';
import 'package:uts_2020130036/services/theme/text_styles.dart';

class DetailButton extends StatelessWidget {
  final void Function()? onPressed;

  const DetailButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: AppColors.c303030,
            minimumSize: Size(width * 0.267, height * 0.044),
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(4)))),
        child: Text(
          Strings.detail.text,
          style: AppTextStyles.nunitoSansSemiBold16
              .copyWith(color: AppColors.cFFFFFF),
        ));
  }
}
