import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/core/presentation/components/big_button.dart';
import 'package:flutter_recipe_app/core/presentation/components/input_field.dart';
import 'package:flutter_recipe_app/ui/color_styles.dart';
import 'package:flutter_recipe_app/ui/text_styles.dart';

class SignUpScreen extends StatefulWidget {
  final void Function() onTapSignIn;

  const SignUpScreen({super.key, required this.onTapSignIn});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text('Created an account,', style: TextStyles.largeTextBold),
                SizedBox(
                  width: 195,
                  child: Text(
                    'Let’s help you set up your account, it won’t take long.',
                    style: TextStyles.smallerTextRegular,
                  ),
                ),
                const SizedBox(height: 20),
                InputField(label: 'Name', placeHolder: 'Enter Name'),
                const SizedBox(height: 20),
                InputField(label: 'Email', placeHolder: 'Enter Email'),
                const SizedBox(height: 20),
                InputField(label: 'Password', placeHolder: 'Enter Password'),
                const SizedBox(height: 20),
                InputField(
                  label: 'Confirm Password',
                  placeHolder: 'Enter Password',
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      side: BorderSide(color: ColorStyles.secondary100),
                      activeColor: ColorStyles.secondary100,
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value ?? false;
                        });
                      },
                    ),
                    Text(
                      'Accept terms & Condition',
                      style: TextStyles.smallerTextRegular.copyWith(
                        color: ColorStyles.secondary100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                BigButton('Sign Up', onPressed: () {}),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 1, width: 50, color: ColorStyles.gray4),
                    Text(
                      ' Or Sign in With ',
                      style: TextStyle(color: ColorStyles.gray4),
                    ),
                    Container(height: 1, width: 50, color: ColorStyles.gray4),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/image/google_button.png',
                      width: 44,
                      height: 44,
                    ),
                    Image.asset(
                      'assets/image/facebook_button.png',
                      width: 44,
                      height: 44,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already a member? ",
                      style: TextStyles.smallerTextBold,
                    ),
                    GestureDetector(
                      onTap: widget.onTapSignIn,
                      child: Text(
                        'Sign In',
                        style: TextStyles.smallerTextBold.copyWith(
                          color: ColorStyles.secondary100,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
