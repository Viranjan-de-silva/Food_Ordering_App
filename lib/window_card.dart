import 'package:flutter/material.dart';

class WindowCard extends StatelessWidget {
  WindowCard(
      {required this.cardImage, required this.onPress, required this.colour});

  final AssetImage cardImage;
  final Function() onPress;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: cardImage,
          ),
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
