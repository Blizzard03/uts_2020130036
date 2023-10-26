import 'package:flutter/material.dart';
import 'package:uts_2020130036/services/constants/colors.dart';
import 'package:uts_2020130036/services/l10n/app_localizations.dart';
import 'package:uts_2020130036/services/theme/text_styles.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Column(
      children: [
        Text(
          l10n.nekoShop,
          style: AppTextStyles.gelasioSemiBold18.copyWith(
            color: const Color.fromARGB(255, 0, 255, 200),
          ),
        ),
        Text(
          l10n.theIntroText,
          style: AppTextStyles.gelasioBold30
              .copyWith(color: AppColors.c303030, fontSize: 18),
        ),
      ],
    );
  }
}
