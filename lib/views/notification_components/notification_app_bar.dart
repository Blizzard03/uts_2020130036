import 'package:flutter/material.dart';
import 'package:uts_2020130036/services/constants/svg_icons.dart';
import 'package:uts_2020130036/services/l10n/app_localizations.dart';

class NotificationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const NotificationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return AppBar(
      toolbarHeight: 150,
      leadingWidth: 50,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: SvgIcon.search,
      ),
      title: Text(
        l10n.notification,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
