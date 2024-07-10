import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/feature/auth/presentation/widget/header_title_widget.dart';
import 'package:stylish/feature/core/presentation/widgets/custom_button.dart';
import 'package:stylish/feature/core/presentation/widgets/custom_input.dart';
import 'package:stylish/utils/styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderTitleWidget(text: 'Welcome Back!'),
              CustomInput(
                prefixIcon: Icons.person,
                hintText: 'Email',
                controller: emailController,
              ),
              CustomInput(
                prefixIcon: Icons.lock,
                hintText: 'Password',
                isObscure: true,
                onTap: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: redTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              CustomButton(
                label: 'Login',
                onTap: () {},
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
                          text: "Create An Account ",
                          style: blackTextStyle.copyWith(
                              color:
                                  greyColor) // Gaya teks untuk bagian currentPage
                          ),
                      TextSpan(
                        text: "Sign Up",
                        style: redTextStyle.copyWith(
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
