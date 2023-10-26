import 'package:flutter/material.dart';
import 'package:uts_2020130036/controllers/home_screen_controller.dart';
import 'package:uts_2020130036/services/app_routes.dart';
import 'package:uts_2020130036/services/constants/colors.dart';
import 'package:uts_2020130036/services/constants/svg_icons.dart';
import 'package:uts_2020130036/services/theme/text_styles.dart';
import 'package:uts_2020130036/views/home_components/products_components.dart';
import 'package:uts_2020130036/views/home_components/tab_bar_components.dart';

import '../controllers/data_controller/cart_manager.dart';

class HomeScreen extends StatefulWidget {
  static const id = "/home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeController controller;

  @override
  void initState() {
    super.initState();
    controller = HomeController(updater: setState)..initial();
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //print("Home");
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              //action for search icon button
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xff73eed0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: SizedBox(
                  height: 142,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/logo/piclogo.png",
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(
              height: 45,
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'Settings',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            const Text(
              'About',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 45,
            ),
            GestureDetector(
              onTap: () {
                AppRoutes.pushReplaceSignIn(context);
              },
              child: const Text(
                'Log Out',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          TabBarComponents(controller: controller),
          CustomProduct(controller: controller),
          GestureDetector(
            onTap: () => AppRoutes.pushCart(context),
            child: Padding(
              padding: const EdgeInsets.all(12.5),
              child: Badge(
                label: Text(
                    "${cartManager.cart.carts.length > 9 ? "9+" : cartManager.cart.carts.length}",
                    style: AppTextStyles.nunitoSansBold12
                        .copyWith(color: AppColors.cFFFFFF)),
                child: SvgIcon.cart,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
