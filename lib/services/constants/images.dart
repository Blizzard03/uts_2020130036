import 'package:flutter/material.dart';

enum AppImage {
  card(AssetImage("assets/images/img_card.png")),
  check(AssetImage("assets/images/img_check.png")),
  logo(AssetImage("assets/images/img_logo.png")),
  onBoarding(AssetImage(
      "assets/images/Splash Screens/Logo_Neko Shop_Splash Screen.png")),

  // Persons
  person(AssetImage("assets/images/img_person.png")),
  person2(AssetImage("assets/images/img_person_1.png")),
  person3(AssetImage("assets/images/img_person_2.png")),
  person4(AssetImage("assets/profiles/M.Ariq_Rasyid.png")),

  // Products
  product(AssetImage("assets/images/img_product.png")),
  product1(AssetImage("assets/images/img_product_1.png")),
  product2(AssetImage("assets/images/img_product_2.png")),
  product3(AssetImage("assets/images/img_product_3.png")),
  product4(AssetImage("assets/images/img_product_4.png")),
  product5(AssetImage("assets/images/img_product_5.png")),
  product6(AssetImage("assets/images/img_product_6.png"));

  const AppImage(this.img);
  final AssetImage img;
}
