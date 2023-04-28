import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:twitter_clone/theme/pallete.dart';

class RoundSmallButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color backgroundColor;
  final Color textColor;
  const RoundSmallButton(
      {super.key,
      required this.onTap,
      required this.label,
      this.backgroundColor = Pallete.whiteColor,
      this.textColor = Pallete.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(fontSize: 16, color: textColor),
      ),
      backgroundColor: backgroundColor,
      labelStyle: TextStyle(color: textColor),
      labelPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    );
  }
}
