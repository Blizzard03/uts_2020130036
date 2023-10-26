import 'package:flutter/material.dart';
import 'package:uts_2020130036/controllers/base_controller.dart';

class ReviewController extends BaseController {
  void goToWriteReview(BuildContext context) {
    // Navigator.of(context).pushReplacementNamed();
  }

  void goToBack(BuildContext context) {
    Navigator.of(context).pop();
  }
}
