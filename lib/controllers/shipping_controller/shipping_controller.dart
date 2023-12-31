import 'package:flutter/material.dart';
import 'package:uts_2020130036/controllers/base_controller.dart';
import 'package:uts_2020130036/screens/profile_screen.dart';
import 'package:uts_2020130036/screens/shipping_screens/add_address_screen.dart';
import '../../models/user_model.dart';

class ShippingController extends BaseController {
  User? user;
  void Function(void Function())? updater;

  ShippingController({required this.updater, this.user});

  void goToProfile(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(ProfileScreen.id);
  }

  void goAddAddressScreen(BuildContext context, int i) {
    Navigator.pushNamed(
      context,
      AddAddress.id,
      arguments: i,
    );
  }
}
