import 'package:flutter/cupertino.dart';
import 'package:uts_2020130036/controllers/base_controller.dart';
import 'package:uts_2020130036/models/product_model.dart';
import 'package:uts_2020130036/screens/cart_screen.dart';
import 'package:uts_2020130036/services/data/database/products.dart';

import '../screens/product_screen.dart';

class FavoriteController extends BaseController {
  void Function(void Function())? updater;
  void goToCongrats(BuildContext context) {
    Navigator.pushNamed(context, CartScreen.id);
  }

  void buttonProduct(BuildContext context, Product product) {
    Navigator.of(context).pushNamed(ProductScreen.id, arguments: product);
  }

  FavoriteController({this.updater});
  void productDelete(int index) {
    products.removeAt(index);
    updater!(() {});
  }
}
