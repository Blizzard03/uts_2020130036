import 'package:flutter_svg/svg.dart';
import 'colors.dart';
import 'icons.dart';

abstract class SvgIcon {
  static final SvgPicture add = SvgPicture.asset(Customicons.add.path);
  static final SvgPicture bag = SvgPicture.asset(Customicons.bag.path);
  static final SvgPicture bell = SvgPicture.asset(Customicons.bell.path);
  static final SvgPicture bellFill =
      SvgPicture.asset(Customicons.bellFill.path);
  static final SvgPicture card = SvgPicture.asset(Customicons.card.path);
  static final SvgPicture cart = SvgPicture.asset(Customicons.cart.path);
  static final SvgPicture cart2 = SvgPicture.asset(Customicons.cart2.path);
  static final SvgPicture checkmark =
      SvgPicture.asset(Customicons.checkmark.path);
  static final SvgPicture edit = SvgPicture.asset(Customicons.edit.path);
  static final SvgPicture home = SvgPicture.asset(Customicons.home.path);
  static final SvgPicture homeFill =
      SvgPicture.asset(Customicons.homeFill.path);
  static final SvgPicture marker = SvgPicture.asset(Customicons.marker.path);
  static final SvgPicture markerFill =
      SvgPicture.asset(Customicons.markerFill.path);
  static final SvgPicture minus = SvgPicture.asset(Customicons.minus.path);
  static final SvgPicture person = SvgPicture.asset(Customicons.person.path);
  static final SvgPicture personFill =
      SvgPicture.asset(Customicons.personFill.path);
  static final SvgPicture plus = SvgPicture.asset(Customicons.plus.path);
  static final SvgPicture popular = SvgPicture.asset(Customicons.popular.path);
  static final SvgPicture search = SvgPicture.asset(Customicons.search.path);
  static final SvgPicture star = SvgPicture.asset(Customicons.star.path);
  static final SvgPicture table = SvgPicture.asset(Customicons.table.path);
  static final SvgPicture cancel = SvgPicture.asset(Customicons.cancel.path);
  static final SvgPicture logo = SvgPicture.asset(Customicons.logo.path);
  static final SvgPicture markerDark =
      SvgPicture.asset(Customicons.marker.path, color: AppColors.c303030);
}
