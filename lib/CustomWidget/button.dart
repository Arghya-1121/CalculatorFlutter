import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Text? btnName;
  final Icon? icon;
  final double radius;
  final Color bgColor;

  const RoundedButton({
    super.key,
    required this.radius,
    required this.btnName,
    this.icon,
    required this.bgColor,
  });
  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: (icon != null) ? icon : btnName,
      );
}
