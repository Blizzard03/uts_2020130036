import 'package:flutter/material.dart';
import 'package:uts_2020130036/controllers/base_controller.dart';
import 'package:uts_2020130036/controllers/data_controller/cart_manager.dart';
import 'package:uts_2020130036/models/cart_item_model.dart';
import 'package:uts_2020130036/models/product_model.dart';
import 'package:uts_2020130036/screens/review_screen.dart';
import 'package:uts_2020130036/services/constants/colors.dart';
import 'package:uts_2020130036/services/constants/strings.dart';
import 'package:uts_2020130036/services/theme/text_styles.dart';
import 'package:uts_2020130036/views/product_components/review.dart';

class ProductController extends BaseController {
  void Function(void Function())? updater;

  /// Fields
  Product product;
  bool isLoading = false;
  bool isFavourite = false;
  int color = 0;
  int page = 0;
  int count = 1;
  double sum = 0;

  /// Constructor
  ProductController({
    this.updater,
    required this.product,
  }) {
    sum = product.price;
  }

  /// Functions

  ///
  void increment() {
    count++;
    sum += product.price;
    updater!(() {});
  }

  ///
  void decrement() {
    if (count > 1) {
      count--;
      sum -= product.price;
      updater!(() {});
    }
  }

  ///
  void btnFavourite() {
    isFavourite = !isFavourite;
    updater!(() {});
  }

  ///
  void btnBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  void goToReview(BuildContext context) {
    Navigator.of(context).pushNamed(ReviewScreen.id);
  }

  ///
  void addToCard(BuildContext context) async {
    updater!(() {});
    final cart = CartItem(
      id: product.id,
      product: product,
      total: sum,
      createAt: DateTime.now().toString(),
      modifyAt: DateTime.now().toString(),
      userId: cartManager.cart.userId,
      quantity: count,
    );
    cartManager.addToCart(cart);
    debugPrint("$cart");
    showSuccessMessage(context);
    updater!(() {});
  }

  ///
  void btnReview(BuildContext context) {
    Review.review(
      context,
      (raiting) {},
      () {},
    );
  }

  ///
  void showSuccessMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.c303030,
        content: Text(
          Strings.success.text,
          style: AppTextStyles.nunitoSansBold14,
        ),
      ),
    );
  }
}
