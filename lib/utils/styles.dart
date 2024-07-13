import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;

Color redColor = const Color(0XFFE75C62);
Color blackColor = const Color(0xff000000);
Color whiteColor = Colors.white;
Color primaryColor = const Color(0xffF83758);

Color greyColor = const Color(0XFFA8A8A9);
Color darkGreyColor = const Color(0XFF626262);

TextStyle redTextStyle = GoogleFonts.poppins(
  color: redColor,
  fontSize: 14.sp,
);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: blackColor,
  fontSize: 14.sp,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: whiteColor,
  fontSize: 14.sp,
);

TextStyle titleTextStyle = GoogleFonts.poppins(
    color: Colors.black, fontSize: 24.sp, fontWeight: FontWeight.w700);

TextStyle semiBoldStyle =
    GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w600);

TextStyle boldStyle =
    GoogleFonts.poppins(fontSize: 20.sp, fontWeight: FontWeight.w700);
