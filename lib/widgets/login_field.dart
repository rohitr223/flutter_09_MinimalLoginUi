import 'package:flutter/material.dart';
import 'package:login_ui/utils/colors/palette.dart';

class LoginField extends StatelessWidget {
  final String hintText;

  const LoginField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Pallete.borderColor,
              width: 3,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Pallete.gradient2,
              width: 3,
            ),
          ),
        ),
      ),
    );
  }
}
