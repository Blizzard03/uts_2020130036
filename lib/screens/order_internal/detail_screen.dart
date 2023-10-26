import 'package:flutter/material.dart';
import 'package:uts_2020130036/controllers/order_controller.dart';
import 'package:uts_2020130036/services/constants/colors.dart';

class DetailScreen extends StatelessWidget {
  static const id = "/detail";
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = OrderController();
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => navController.goToOrder(context),
          color: AppColors.c303030,
        ),
      ),
      body: const Center(
        child: Text("Detail Screen"),
      ),
    );
  }
}
