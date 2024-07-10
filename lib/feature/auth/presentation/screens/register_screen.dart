import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/feature/auth/presentation/widget/header_title_widget.dart';
import 'package:stylish/feature/core/presentation/widgets/custom_appbar.dart';
import 'package:stylish/feature/core/presentation/widgets/custom_button.dart';
import 'package:stylish/feature/core/presentation/widgets/custom_input.dart';
import 'package:stylish/routes/app_routes.dart';
import 'package:stylish/utils/styles.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController rePasswordController =
      TextEditingController(text: '');

  bool passwordEye = true;
  bool rePasswordEye = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    rePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderTitleWidget(text: 'Create an Account'),
                SizedBox(
                  height: 20.h,
                ),
                CustomInput(
                  prefixIcon: Icons.person,
                  hintText: 'Email',
                  controller: emailController,
                ),
                CustomInput(
                  prefixIcon: Icons.lock,
                  hintText: 'Password',
                  isObscure: passwordEye,
                  onTap: () {
                    setState(() {
                      passwordEye = !passwordEye;
                    });
                  },
                  controller: passwordController,
                ),
                CustomInput(
                  prefixIcon: Icons.lock,
                  hintText: 'Confirm Password',
                  isObscure: rePasswordEye,
                  onTap: () {
                    setState(() {
                      rePasswordEye = !rePasswordEye;
                    });
                  },
                  controller: rePasswordController,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                      style: blackTextStyle,
                      children: [
                        TextSpan(
                          text: "By clicking the ",
                          style: blackTextStyle.copyWith(color: greyColor),
                        ),
                        TextSpan(
                          text: "Register ",
                          style: redTextStyle,
                        ),
                        TextSpan(
                          text: "button, you agree to the public offer",
                          style: blackTextStyle.copyWith(color: greyColor),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomButton(
                  label: 'Create Account',
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.onboarding);
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      style: blackTextStyle,
                      children: [
                        TextSpan(
                          text: "I Already Have an Account ",
                          style: blackTextStyle.copyWith(color: greyColor),
                        ),
                        WidgetSpan(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Login",
                              style: redTextStyle.copyWith(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
