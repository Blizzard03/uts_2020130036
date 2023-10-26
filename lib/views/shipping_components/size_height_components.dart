import 'package:flutter/cupertino.dart';


class SizeHeight extends StatelessWidget {
  final double height;

  const SizeHeight({super.key, this.height = 20});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height * MediaQuery.of(context).size.height / 815);
  }
}