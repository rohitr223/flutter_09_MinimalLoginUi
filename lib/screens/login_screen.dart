import 'package:flutter/material.dart';
import 'package:login_ui/utils/colors/palette.dart';
import 'package:login_ui/widgets/gradient_button.dart';
import 'package:login_ui/widgets/login_field.dart';
import 'package:login_ui/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/signin_balls.png'),
            const Text(
              'Sign In',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            const SizedBox(height: 50),
            SocialButton(
              onPressed: () {},
              iconPath: 'assets/svgs/g_logo.svg',
              label: 'Continue with google',
            ),
            const SizedBox(height: 20),
            SocialButton(
              onPressed: () {},
              iconPath: 'assets/svgs/f_logo.svg',
              label: 'Continue with facebook',
              /*
                Since the facebook button was bigger in width as compared
                to facebook, we adjust the width manually by using 
                horizontalPadding.
              */
              horizontalPadding: 90,
            ),
            const SizedBox(height: 15),
            const Text(
              'OR',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Pallete.whiteColor,
              ),
            ),
            const SizedBox(height: 15),
            LoginField(
              hintText: 'Email',
            ),
            const SizedBox(height: 20),
            LoginField(
              hintText: 'Password',
            ),
            const SizedBox(height: 20),
            GradientButton(),
          ],
        ),
      ),
    );
  }
}
