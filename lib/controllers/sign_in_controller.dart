import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_2020130036/controllers/base_controller.dart';
import 'package:uts_2020130036/controllers/data_controller/cart_manager.dart';
import 'package:uts_2020130036/services/app_routes.dart';
import 'package:uts_2020130036/services/data/database/users.dart';
import 'package:uts_2020130036/views/utils/message_components.dart';

class SignInController extends BaseController {
  TextEditingController emailController;
  TextEditingController passwordController;
  void Function(void Function())? updater;
  bool isLoading = false;

  SignInController({this.updater})
      : emailController = TextEditingController(),
        passwordController = TextEditingController();

  @override
  void close() {
    emailController.dispose();
    passwordController.dispose();
    super.close();
  }

  void signIn(BuildContext context) async {
    isLoading = true;
    updater!(() {});

    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    debugPrint(email);
    debugPrint(password);

    /// user exist:
    for (int i = 0; i < usersList.length; i++) {
      if (usersList[i].email == email && usersList[i].password == password) {
        currentUser = usersList[i];
        isLoading = false;
        cartManager = CartManager(usersList[i].userId);
        updater!(() {});
        AppRoutes.pushReplaceHome(context);
        return;
      }
    }
    isLoading = false;
    updater!(() {});
    AppMessage.customSnackBar(
        context: context, content: "Wrong email or password!");
  }
}
