import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.btnText, required this.onTap});
  final Text btnText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      fillColor: const Color(0xFFFDA93D),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      child: btnText,
    );
  }
}
