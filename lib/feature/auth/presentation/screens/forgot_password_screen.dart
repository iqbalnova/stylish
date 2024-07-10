import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/feature/auth/presentation/widget/header_title_widget.dart';
import 'package:stylish/feature/core/presentation/widgets/custom_appbar.dart';
import 'package:stylish/feature/core/presentation/widgets/custom_button.dart';
import 'package:stylish/feature/core/presentation/widgets/custom_input.dart';
import 'package:stylish/utils/styles.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController emailController = TextEditingController(text: '');

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
                const HeaderTitleWidget(text: 'Forgot Password?'),
                SizedBox(
                  height: 20.h,
                ),
                CustomInput(
                  prefixIcon: Icons.person,
                  hintText: 'Enter your email address',
                  controller: emailController,
                ),
                SizedBox(
                  height: 10.h,
                ),
                RichText(
                  text: TextSpan(
                    style: blackTextStyle,
                    children: [
                      TextSpan(
                        text: "* ",
                        style: redTextStyle,
                      ),
                      TextSpan(
                        text:
                            "We will send you a message to set or reset your new password",
                        style: blackTextStyle.copyWith(color: greyColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomButton(
                  label: 'Submit',
                  onTap: () {},
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
