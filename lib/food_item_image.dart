import 'package:flutter/material.dart';
import 'constants.dart';

class food_item_image extends StatelessWidget {
  food_item_image({required this.foodImage});
  final AssetImage foodImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: foodImage,
        ),
        color: kInactiveColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
