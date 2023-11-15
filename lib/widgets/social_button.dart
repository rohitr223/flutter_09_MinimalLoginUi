import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/utils/colors/palette.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  void Function() onPressed;

  SocialButton({
    super.key,
    required this.iconPath,
    required this.label,
    this.horizontalPadding = 100,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        colorFilter: const ColorFilter.mode(
          Pallete.whiteColor,
          BlendMode.srcIn,
        ),
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: Pallete.whiteColor,
          fontSize: 17,
        ),
      ),
      style: TextButton.styleFrom(
        padding:
            EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
