import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String label;
  final Decoration? decoration;
  // final TextStyle? textStyle;

  const CustomButton({
    Key? key,
    required this.onTap,
    required this.label,
    this.decoration,
    // this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        width: double.infinity,
        height: 55.h,
        decoration: decoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: primaryColor,
            ),
        child: Center(
          child: Text(
            label,
            // style: textStyle?.merge(whiteTextStyle) ?? whiteTextStyle,
            style: whiteTextStyle.copyWith(
                fontSize: 20.sp, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
